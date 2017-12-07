-- Enter your code here. Read input from STDIN. Print output to STDOUT

f [] = []
f (x:xs) = if x >= 0
             then x : f xs
             else x * (-1) : f xs

-- This section handles the Input/Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ putStrLn $ map show $ f $ map (read :: String -> Int) $ lines inputdata
