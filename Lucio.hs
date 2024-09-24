--Ejercicio 6 (Prod carteciano)
productoCarteciano :: (Num a) => (a ,a) -> (a, a) -> a
productoCarteciano (x1 ,y1) (x2 ,y2) = (x1*x2) + (y1*y2)

--Ejercicio 7 (Valor absoluto)
valorAbsoluto :: Int -> Int
valorAbsoluto x = if (x<0) then -x else x 

--Ejercicio 8 (Suma de lista, con pm)
sumaLista :: (Num a) => [a] -> a
sumaLista [] = 0
sumaLista (x:xs) = x + sumaLista xs

--Ejercicio 9 
curri :: Int -> Int -> Int
curri x y = (x^y)

--Ejercicio 10
currif :: Int -> Int 
currif x = curri 2 x

--Ejercicio 11
sumTres :: (Num a) =>  a -> a -> a -> a
sumTres  x y z = (x+y+z)

--Ejercicio 12
addFour :: (Num a) => a -> a -> a
addFour x y = sumTres x y 4

--Ejercicio 15 
belongs e [] = False
belongs e ( a : as ) = belongs e as || ( a == e )

--Ejercicio 16
fib :: Int -> Int 
fib x
    |x<=0 = 0 --Caso base
    |x == 1 = 1 --Caso base 
    |otherwise = fib(x-1) + fib(x-2) --Hipotesis Inductiva

--Ejercicio 17 
length' :: [a] -> Int
length'  [] = 0
length' ( _ : xs ) = 1 + length' xs
