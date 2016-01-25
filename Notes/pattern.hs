data Thing = One
           | Two
           | Three
 deriving Show

data Person = Person String Int Thing
  deriving Show


getName :: Person -> String
getName p@(Person n _ _) = "The name of the data structure ("++ show p ++") is " ++ n
-- p is the value were passing in. in this format we can use the value we passed in for a reason










{-
    An underscore _ can be used as a “wildcard pattern” which matches anything.

    A pattern of the form x@pat can be used to match a value against the pattern pat,
    but also give the name x to the entire value being matched.

    Patterns can be nested. For example:
    checkFav :: Person -> String
    checkFav (Person n _ SealingWax) = n ++ ", you're my kind of person!"
    checkFav (Person n _ _)          = n ++ ", your favorite thing is lame."
-}
