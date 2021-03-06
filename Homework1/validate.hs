module Main where
main :: IO ()

toDigits :: Integer -> [Integer]
toDigitsRev :: Integer -> [Integer]
doubleEveryOther :: [Integer] -> [Integer]
sumDigits :: [Integer] -> Integer
validate :: Integer -> Bool

-- helpers
reverseInt :: Integer -> Integer
sumList :: [Integer] -> Integer
expandDigits :: [Integer] -> [Integer]


-- reverses an integers order.
reverseInt 0 = 0
reverseInt n
  | (n <= 9)    = n
  | otherwise   = read (reverse (show n)) :: Integer

-- sum a list
sumList [] = 0
sumList (x:xs) =  x + sumList xs

-- expand values of digits
expandDigits [] = []
expandDigits (x:xs)
    | x < 10    = x :  expandDigits xs
    | x >= 10   = (toDigits x) ++ (expandDigits xs)


-- converts an Integer into a list of elements where each digit is an element
-- in the the list EX: 6751 -> [6,7,5,1]
toDigits 0 = []
toDigits n
  | n <= 0     = []
  | n < 10     = n : []
  | otherwise  = toDigits (n `div` 10 ) ++ [n `mod` 10]

-- converts the reverse of a Integer into a list of elements where each
-- digit is an element in the list EX: 6751 -> [1,5,7,6]
toDigitsRev 0 = []
toDigitsRev n
  | n < 0     = []
  | n <= 10   = n : []
  | otherwise = toDigits (reverseInt n)

-- doubles every other element in a list
doubleEveryOther []       = []
doubleEveryOther (x:[])   = [ 2 * x]
doubleEveryOther (y:x:xs) = (2*y):x:(doubleEveryOther xs)

-- sums an expanded list
sumDigits [] = 0
sumDigits n  = sumList ((expandDigits n))

-- validates credit card
-- (sumDigits ( doubleEveryOther ( toDigits n )) `mod` 10
validate n
  | sumDigits ( doubleEveryOther ( toDigits n) ) `mod` 10 == 0 = True
  | otherwise                                                  = False

main = do
  let x = sumDigits ( doubleEveryOther (toDigits 4012888888881882)) `mod` 10
  let t = validate 4012888888881882
  print x
  print t
