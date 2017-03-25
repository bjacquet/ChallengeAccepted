
numbers :: String -> [Int]
numbers nums = map (read::String->Int) (words nums)

min_i_max_aux count minimum maximum [] = return ((count - maximum), (count - minimum))
min_i_max_aux count minimum maximum (value:values) =
  min_i_max_aux (count + value) (min minimum value) (max maximum value) values

min_i_max (n:ns) = min_i_max_aux n n n ns

main :: IO()
main = do
  inputdata <- getContents
  (min, max) <- min_i_max (numbers inputdata)
  putStr $ show min ++ " " ++ show max
