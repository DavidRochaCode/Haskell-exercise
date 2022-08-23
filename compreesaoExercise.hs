-- verificar se um elemento x pertence à lista
lista = [3,67,5,4,33,2,0,9, 28, 12, 7, 88]
filtrar :: [Int] -> Int -> [Int]
filtrar lista n = [x | x <- lista, x == n]
listar :: Int -> Bool
listar n = filtrar lista n == [n]

 

