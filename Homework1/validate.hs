module Main where
main :: IO ()

toDigits :: Integer -> [Integer]
toDigitsRev :: Integer -> [Integer]
doubleEveryOther :: [Integer] -> [Integer]
sumDigits :: [Integer] -> Integer

-- helpers
reverseInt :: Integer -> Integer
sumList :: [Integer] -> Integer
expandDigits :: [Integer] -> [Integer]

-- reverses an integers order.
reverseInt 0 = 0
reverseInt n
  | (n <= 9)    = n
  | otherwise = read (reverse (show n)) :: Integer

-- sum a list
sumList [] = 0
sumList (x:xs) =  x + sumList xs

-- expand values of digits
expandDigits [] = []
expandDigits (x:xs)
    | x < 10    = x : xs
    | x >= 10   = (expandDigits xs) ++ (toDigits x)


-- converts an Integer into a list of elements where each digit is an element
-- in the the list EX: 6751 -> [6,7,5,1]
toDigits 0 = []
toDigits n
  | n <= 0     = []
  | n < 10   = n : []
  | otherwise = toDigits (n `div` 10 ) ++ [n `mod` 10]

-- converts the reverse of a Integer into a list of elements where each
-- digit is an element in the list EX: 6751 -> [1,5,7,6]
toDigitsRev 0 = []
toDigitsRev n
  | n < 0     = []
  | n <= 10   = n : []
  | otherwise = toDigits (reverseInt n)

-- doubles every other element in a list
doubleEveryOther []       = []
doubleEveryOther (x:[])   = [x]
doubleEveryOther (y:x:xs) = (y * 2) : (x : []) ++ doubleEveryOther xs

-- sums an expanded list
sumDigits [] = 0
sumDigits n = sumList ((expandDigits n))



main = do
  let n = toDigits 1234
  let z = toDigitsRev 1234
  let t = sumList [10,15,5,1]
  print n
  print z
  print t
