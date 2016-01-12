sumEveryTwo :: [Integer] -> [Integer]
sumEveryTwo []         = []
sumEveryTwo (x:[])     = [x]
sumEveryTwo (x:(y:zs)) = (x + y) : sumEveryTwo zs

doubleEveryOther :: [Integer] -> [Integer]
-- doubles every other element in a list
doubleEveryOther []       = []
doubleEveryOther (x:[])   = [x]
doubleEveryOther (y:x:xs) = (y * 2) : doubleEveryOther xs
