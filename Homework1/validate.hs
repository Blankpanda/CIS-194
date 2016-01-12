module Main where
main :: IO ()

toDigits :: Integer -> [Integer]
toDigitsRev :: Integer -> [Integer]
reverseInt :: Integer -> Integer
doubleEveryOther :: [Integer] -> [Integer]

-- reverses an integers order.
reverseInt 0 = 0
reverseInt n
  | (n <= 9)    = n
  | otherwise = read (reverse (show n)) :: Integer


-- converts an Integer into a list of elements where each digit is an element
-- in the the list EX: 6751 -> [6,7,5,1]
toDigits 0 = []
toDigits n
  | n < 0     = []
  | n <= 10   = n : []
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
doubleEveryOther (y:x:xs) = (y * 2) : doubleEveryOther (xs ++ (toDigits x))




main = do
  let n = toDigits 1234
  let z = toDigitsRev 1234
  let t = doubleEveryOther [5,1,5,1]
  print n
  print z
  print t
