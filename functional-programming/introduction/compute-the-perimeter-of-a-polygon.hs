
-- computerPerimeter :: Int->Int->Int
-- computePerimeter 0 p = return p
-- computePerimeter n _ = do
--   line <- getLine
--   (words line)


getEdges 0 e = return e
getEdges n (e) = do
  line <- getLine
  let edges = words line
      x = read (head edges)
      y = read (last edges)
    in getEdges (n -1) e++[(x, y)]

-- main :: IO ()
-- main = do
--   n <- readLine
--   edges = getEdges (read n)

-- λ> 
