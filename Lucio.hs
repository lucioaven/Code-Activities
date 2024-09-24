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