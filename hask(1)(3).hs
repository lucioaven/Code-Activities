--Act1
infList = 1 : infList

--Act2
listI :: Integer->[Integer]
listI n = n : listI (n+1)

--Act3
listP :: Int-> [Int]
listP 0 = []
listP n =  listP (n-1) ++ [n]

--Act4 
primerosN :: [Integer] -> Integer -> [Integer]
primerosN []  n = [] 
primerosN (x:xs) 0 = []
primerosN (x:xs)  n = x : primerosN xs (n-1) 

primerosN' :: [Integer] -> [Integer]
primerosN' [] = []
primerosN' (x:xs) = primerosN (x:xs) 5

--Act5 
cuadradosL :: (Num a) => a -> a
cuadradosL x = x*x

square :: (Num a) => [a] -> [a]
square xs = map (cuadradosL) xs

--Act6
divisoresAlto :: Int  -> [Int]
divisoresAlto x = filter (\n -> mod x n == 0) [1..x]

--Act 7
primos'' :: [Int] -> [Int]
primos'' xs = filter (\n -> divisoresAlto n == [1,n]) xs

--Act8
cuad :: [Int] -> Int
cuad [] = 0
cuad xs = foldl (+) 0 (square xs) 

--Act 9
sucs :: [Int] -> [Int]
sucs [] = []
sucs xs = map (+1) xs

--Definir la funcion deleteN :: Eq a = Int -> a -> [a] -> [a] de forma tal que (deleteN n x xs) es la lista obtenida luego de eliminar las primeras n ocurrencias de x en xs, 

--Por ejemplo deleteN 2 'a' "salamanca" -- > "slmanca"
--deleteN 7 'a' "salamanca"  -- >  "slmnc"

deleteN :: Eq a => Int -> a -> [a] -> [a]
deleteN 0 _ xs = xs
deleteN n _ [] = []
deleteN n c (x:xs) | (x==c) = deleteN (n-1) c xs 
							  | otherwise = x : deleteN n c xs
							  
--14
succlis :: [Int] -> [Int]
succlis xs = [e+1| e <- xs]
--15
cuadlis :: [Int] -> [Int]
cuadlis xs = [e^2| e <- xs]
--16
paresMayores10 :: [Int] -> [Int]
paresMayores10 xs = [e|e<-xs, (e>10 && e mod 2 == 0)]
--17
divisores :: Int -> [Int]
divisores x = [ n | n <- [1.. x], (x mod n) == 0]
--18
todosOcurrenEn :: Eq a => [a] -> [a] -> Bool
todosOcurrenEn xs ys = and [x elem ys  |x<-xs]
--19
primosN :: Int -> [Int]
primosN x = [ n |  n<- [2..x], divisores n == [1,n]]
--20
productCartesiano :: [Int] -> [Int] -> [(Int,Int)]
productCartesiano xs ys = [ (x,y) | x <- xs, y <- ys]
--21
ocurreA :: Eq a => [a] -> a -> Int
ocurreA xs c = length([x|x<-xs, x == c])
--22
--23
--24

--Practica 6--

-- Act1 (definir el tipo Nat, visto en el teorico)
data Nat = Zero | succ Nat deriving show
--Otros ejemplos
data Colores = Rojo | Amarillo | Azul
data Lista a = Vacia | a



