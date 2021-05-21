import Data.List ()
import System.IO()
--u2_E1.-TRES FUNCIONES
cuadrado :: Int -> Int 
cuadrado a = a*a

multi :: Int -> Int -> Int 
multi a b = a * b

res :: Int -> Int -> Int -> Int 
res a b c = cuadrado a + multi a b

--U2_E2.- POTENCIAS
potencia :: Int -> Int -> Int
potencia a b = a ^b

--U2_E3.-MODULO
operacion :: Int-> Int -> Int 
operacion a b = a `mod` b

--U2_E4.- REDONDEO DE NUMEROS
abajo :: Float -> Int
abajo x = floor x

arriba :: Float -> Int 
arriba x = ceiling x

redondeo :: Float -> Int 
redondeo x = round x

--U2_E5.- FUNCION IF MODULO
modulo :: (Integral a, Show a) => a -> a -> [Char]
modulo x y = if ( x `mod` y) ==0  then show(x) ++ " Es modulo de " ++ show(y) else show(x) ++ " No es modulo de " ++ show(y)
--U2_E6.- FUNCION ODD
non :: Integral a => a -> String
non x = if ( even x ) then  show( False )  else show( True )
--U2_E7.- NON O PAR CON TEXTO
non2 :: (Integral a, Show a) => a -> [Char]
non2 x = if ( even x ) then (" El numero ") ++ show( x ) ++ (" es par ") else (" El numero ") ++ show( x ) ++ (" es non ")
--U2_E8.- FUNCIONES ANIDADAS
--PARTE 1
suma :: (Ord a, Num a) => a -> a -> a -> a
suma a b c = if a < c then b + c else a + c
--PARTE2
non3 :: (Integral a, Show a) => a -> [Char]
non3 x = if ( even x ) then show( x ) ++ (" Y es par ") else ("") ++ show( x ) ++ (" es non ")

suma2 :: (Show a, Integral a) => a -> a -> a -> [Char]
suma2 a b c = if a < c then show (" La suma de los numeros ") ++ show( b ) ++ ( " " ) ++ show( c ) ++ (" es ") ++ non3 ( b + c )  else show (" La suma de los numeros ") ++ show(a) ++ ( " " ) ++ show(c) ++ (" es ") ++ non3 ( a + c )

--U2_E9.- LISTAS
lista :: [Integer]
lista = [98,34,26,32,18]
mayor :: Integer
mayor = maximum lista
menor :: Integer
menor = minimum lista
lista2 :: [Integer]
lista2 = [98,18]

--U2_E10.- NUMERO EN LISTA
lista3 :: [Integer]
lista3 = [1..1000]
buscar :: Integer -> p -> String
buscar x ys = if notElem x lista3 then show("El numero no se encontro en la lista") else show("El numero que ingreso fue encontrado y es: ") ++ show(x)
non4 :: (Integral a, Show a) => a -> [Char]
non4 x = if ( even x ) then show( x ) ++ (" y es par ") else ("") ++ show( x ) ++ (" y es non ")
buscar2 :: Integer -> p -> [Char]
buscar2 x ys = if notElem x lista3 then show("El numero no se encontro en la lista") ++ non4(x) else show("El numero que ingreso fue encontrado y es: ") ++ non4(x)

--U2_E11.- LISTA CON LETRAS
lista4 :: [Char]
lista4 = ['E'..'Z']
restar :: Integer
restar = (22-7)
lista5 :: [Char]
lista5 = reverse lista4
lista6 :: [Char]
lista6 = ['E'..'N'] ++ ['Z','Y','X','W','V','U','T','S','R','Q']
--U2_E12.- DOS LISTAS
lista7 :: [Integer]
lista7 = [1..10]
lista8 :: [Integer]
lista8 = [20..30]
--U2_E13.- LISTAS COMPUESTAS
lista9 :: [[Char]]
lista9 = ["Este numero es par:" ++ " " ++ show( x ) | x<-[1..50], x `mod` 2 == 0]
lista10 :: [Integer]
lista10 = [20..30]
lista11 :: [Integer]
lista11 = [ x | x<-lista10, x>0 && x<30]
buscar3 :: Integer -> p -> String
buscar3 x ys = if notElem x lista11 then show("no se encontro el numero") else show(x)
non5 :: (Integral a, Show a) => a -> [Char]
non5 x = if ( even x ) then show( x ) ++ (" es par ") else ("") ++ show( x ) ++ (" es non ")
lista12 :: [[Char]]
lista12 = [ non5 x | x<-lista10, x>0 && x<30]
--U2_E14.- LISTAS COMPUESTAS NUMERO EN DOS LISTAS
lista13 :: [Integer]
lista13 = [10,20,30,40,50]
lista14 :: [Integer]
lista14 =[1..30]
buscar4 :: [Integer]
buscar4 = [x | x<-lista14, x `mod` 10 == 0]
--U2_E15.- DOS LISTAS CON RANGO
lista15 :: [Integer]
lista15 = [10,20,30,40,50]
lista16 :: [Integer]
lista16 =[1..30]
buscar5 :: [Integer]
buscar5 = [x | x<-lista16, x `mod` 10    == 0]
buscar6 :: [Integer]
buscar6 = [x | x<-lista16, x>=10 && x<=20]

