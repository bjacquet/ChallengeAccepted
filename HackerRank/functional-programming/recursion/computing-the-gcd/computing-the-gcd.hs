module Main where

--gcdAux' :: Integral a => a -> a -> a -> (a, a)
gcdAux' n m d
  | even n && even m = gcdAux' (n/2) (m/2) (d+1)
  | n == m           = (n, d)
  | even n           = gcdAux' (n/2) m d
  | even m           = gcdAux' n (m/2) d
  | n > m            = gcdAux' ((n-m) /2) m d
  | otherwise        = gcdAux' n ((m-n) /2) d


--gcd' :: Fractional a => a -> a -> a
gcd' n m = do
  let (g, d) = gcdAux' n m 0
  (2^d) * g


-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
  input <- getLine
  print . uncurry gcd' . listToTuple . convertToInt . words $ input
 where
  listToTuple (x:xs:_) = (x,xs)
  convertToInt = map (read :: String -> Int)
