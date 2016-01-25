data Thing = One
           | Two
           | Three
 deriving Show

isTwo :: Thing -> Bool
isTwo Two = True
isTwo _   = False


data FailableDouble = Failure
                    | OK Double
  deriving Show

safeDiv :: Double -> Double -> FailableDouble
safeDiv _ 0 = Failure -- cannot divide by zero
safeDiv x y = OK (x / y)


data Person = Person String Int Thing
  deriving Show

me :: Person
me = Person "Caleb" 100 One -- data constructor


getAge:: Person -> Int
getAge (Person _ a _) = a -- retrieves the value at a which in the constructor is age


main = do
  let x = getAge me
  print x
