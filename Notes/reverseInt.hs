reverseInt :: Integer -> Integer

reverseInt 0 = 0
reverseInt n 
  | (n <= 9)  = n
  | otherwise = read (reverse (show n)) :: Integer
