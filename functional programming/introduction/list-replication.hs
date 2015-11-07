f :: Int -> [Int] -> [Int]
f n [] = []
f n (a:arr) = (faux n a) ++ (f n arr)

faux :: Int -> Int -> [Int]
faux 0 a = []
faux n a = a : faux (n - 1) a

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words
