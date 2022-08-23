{-
 1- Fornecidos três valores a, b e c, escreva uma função que retorne quantos dos três são iguais.
 A resposta pode ser 3 (todos iguais), 2 (dois iguais e o terceiro diferente) ou 0 (todos diferentes).
 -}
valores :: Int -> Int -> Int -> Int
valores a b c 
	| a == b && b == c && a == c = 3
	| a == b || a == c || b == c = 2
	| otherwise = 0


{- 
 2- Fornecidos três valores a, b e c, elaborar uma função que retorne quantos desses três valores são maiores que a média 
entre eles.
-} 

valores2 a b c 
	| a > m && b > m && c > m = 3
	| a > m && b > m || a > m && c > m || b > m && c > m = 3
	| a > m || b > m || c > m = 1
	| otherwise = 0
		where m = (a+b+c)/3
{-
 3- Escreva uma função potencia_2 que retorne o quadrado de um número (x2)
-} 

potencia_2 x = x*x 

{-
 4- Reutilizando a função potencia_2, construir uma função potencia_4 que retorne o seu argumento elevado à quarta potência 
-}

potencia_4 potencia_2 x  = potencia_2 x * potencia_2 x


{-
 5- Escrever duas funções, x_maior que retorne o maior e x_menor que retorne o menor valor real, das raízes de uma equação do segundo grau. A expressão genérica é dada por:

-}

raiz1 a b c = let delta = (b*b) - ((4*a)*c) in (((-1)*b) + sqrt (delta))/(2*a)
raiz2 a b c = let delta = (b*b) - ((4*a)*c) in (((-1)*b) - sqrt (delta))/(2*a)

maior a b c 
	| x > y = x
	|otherwise = y
	where
		x = raiz1 a b c 
		y = raiz2 a b c
menor a b c 
	| x < y = x
	|otherwise = y
	where
		x = raiz1 a b c
		y = raiz2 a b c

{-
 6- Criar funções que calculem a soma dos números entre n1 e n2 
-}

soma n1 n2 = sum [n1..n2]

--7- Dados dois números n1 e n2, encontrar os múltiplos de n3 que se encontram nesse intervalo (inclusivo).

multiplos a b c = [x*c | x <-[a..b], x*c<=b] 

-- 8- criar uma função que retona o resto de uma divisão, sem usar o mod
quociente x y = x/y
quocienteDivisor quociente x y = quociente x y * y
resto quocienteDivisor quociente x y = quocienteDivisor quociente x y - x




















