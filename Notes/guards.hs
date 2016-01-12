hailstone :: Integer -> Integer
hailstone n
    |   n `mod` 2 == 0 = n `div` 2
    |   otherwise      = 3 * n + 1


foo :: Integer -> Integer
foo 0 = 16
foo 1 = 15
foo n
    |   n < 0           = 0
    |   n `mod` 17 == 2 = -43
    |   otherwise       = n + 3

isEven :: Integer -> Bool
isEven n
    | n `mod` 2 == 0 = True
    | otherwise      = False


main = do
    let x = isEven 3
    let y = isEven 4
    print x
