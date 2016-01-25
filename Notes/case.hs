ex = case "Hello" of
        []       -> 3
        ('H':s)  -> length s
        _        -> 7


failureToZero :: FailableDouble -> Double
failureToZero Failure = 0
failureToZero (OK d)  = d
-- is the same as
failureToZero' :: FailableDouble -> Double
failureToZero' x = case x of
                     Failure -> 0
                     OK d    -> d
