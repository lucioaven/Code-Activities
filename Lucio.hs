listad :: [Int] -> Int  
listad [] = 0
listad (x:xs) = x + listad xs

escalar :: (Int, Int) -> (Int, Int) -> Int
escalar (x1,y1) (x2,y2) = x1*x2+y1*y2

absp :: Int->Int
absp n |n > 0 = n
       |n < 0 = n*(-1)
       |n == 0 = n

sumD :: [Int]->Int
sumD [] = 0
sumD (x:xs) = x + sumD xs

poten :: Int->Int->Int
poten x y = x^y

--ACT 10
poten2:: Int -> Int
poten2 = poten 2

curr1:: Int -> Int -> Int -> Int
curr1 x y z = x+y+z

curr2:: Int -> Int -> Int
curr2 = curr1 4

--ACT 13
zeros:: [Int] -> Int -> Bool
zeros a 0 =  True
zeros a n = zeros a (n-1) && (a!!(n-1) == 0)

factorial1:: Integer -> Integer
factorial1 0=1
factorial1 n = n*factorial1 (n-1) 

--ACT 15
fibx:: Int -> (Int, Int) -> Int
fibx 0 (x,y) = y
fibx n (x,y) = fibx (n-1) (y, x+y) 

fib:: Int -> Int
fib x = fibx(x) (0,1)

--ACT
lenghtt:: [Int] -> Int
lenghtt [] = 0
lenghtt (_:xs) = 1+ lenghtt xs

sumaa[]=0
sumaa(x:xs) = x+ sumaa xs
