
fact :: Int -> Int
fact n = if n == 0 then 1 else n * fact (n-1)


pascal :: Int -> Int -> Int
pascal n r = (fact n) `div` ((fact r) * (fact (n - r)))


rowValues :: Int -> [Int]
rowValues 0   = [0]
rowValues row = [pascal row x | x <- [0 .. row]]


drawRow row = rowValues (row-1)

-- drawTriangle rows =

main = do
    input <- getLine
    print . drawRow . (read :: String -> Int) $ input
