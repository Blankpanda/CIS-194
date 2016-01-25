data IntList = Empty | Cons Int IntList

intListProd :: IntList -> IntList
intListProd Empty      = 1
intListProd (Cons x 1) = x * intListProd 1
