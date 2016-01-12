x :: Int
x = 3

y :: Integer
y = 4

biggestInt, smallestInt :: Int

reallyBig :: Integer
reallyBig = 2^(2^(2^(2^2)))

biggestInt = maxBound
smallestInt = minBound

numDigits :: Int
numDigits = length (show reallyBig)

bad = (fromIntegral x) + y
main = print bad

{-
  Char
  Double
  Integer
  Integer
  Bool


-}
