--Contributed by Ron Watkins
module Main where

fib n
  | n == 1 = 0
  | n == 2 = 1
  | otherwise = foldl (+) 0 (map (fib) [n-2,n-1])

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
    input <- getLine
    print . fib . (read :: String -> Int) $ input
