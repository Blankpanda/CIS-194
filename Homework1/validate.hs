module Main where
main :: IO ()
toDigits :: Integer -> [Integer]
toDigitsRev :: Integer -> [Integer]
reverseInt :: Integer -> Integer

reverseInt 0 = 0
reverseInt n
  | (n <= 9)    = n
  | otherwise = read (reverse (show n)) :: Integer

toDigits 0 = []
toDigits n
  | n < 0     = []
  | n <= 10   = n : []
  | otherwise = toDigits (n `div` 10 ) ++ [n `mod` 10]

toDigitsRev 0 = []
toDigitsRev n
  | n < 0     = []
  | n <= 10   = n : []
  | otherwise = toDigits (reverseInt n)



main = do
  let n = toDigits 1234
  let z = toDigitsRev 1234
  print n
  print z
