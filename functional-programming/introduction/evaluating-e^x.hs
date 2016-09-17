solve :: Double -> Double
solve x = foldl (+) 1 (take 9 [ (x**i)/(product [i, i-1 .. 1]) | i <- [1..] ])

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words
