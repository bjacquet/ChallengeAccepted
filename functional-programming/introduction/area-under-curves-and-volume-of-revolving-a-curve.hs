import Text.Printf (printf)

{-
-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b =  0 --Complete this function--
-}

-- as = [1..5]
-- bs = [6..10]
-- l  = 1
-- r  = 4

interval = 0.001

alg_exp as bs x = [ a*(x^b) | (a,b) <- zip as bs]

rect_area as bs x = sum (alg_exp as bs x)

intervals l r = [x | x <- [l, l+interval .. r]]

area l r as bs = (sum [rect_area as bs x | x <- intervals l r]) / 1000.0

delta_x l r = (r - l) / (fromIntegral (length (intervals l r)))

volume l r as bs = (sum [(rect_area as bs x) * interval
                        | x <- intervals l r])


--Input/Output.
-- main :: IO ()
-- main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines
