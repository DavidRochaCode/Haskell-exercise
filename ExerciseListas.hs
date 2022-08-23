--crar uma função que retornr todas as letras do alfabeto

alfabeto = ['a'..'z']

--Crie uma lista que retorne os numeros de 1 a 200, de forma decrescente

imprimir = [200, 199..1]    

--criar uma função que retorne o inverso de uma lista
inverso :: [a] -> [a]
inverso [a] = [a]
inverso(a:b) = (inverso b) ++ [a]

-- crie uma função para pegar os n 1⁰ elementos de uma lista.
retirar :: Int -> [a] -> [a]
retirar 0 _ = []
retirar _ [] = []
retirar n (x:y) = x : retirar (n-1) y 

-- Crie uma função para remover os n 1⁰ elementos de uma lista.

lista :: [a] -> [a] -- variável lista recebe uma lista e retorna uma lista
lista l = l -- recebendo a lista 'l' e retornando a lista 'l'
remover 0 l = l --se eu remover 0 elementos de uma lista, me retorne a lista.
remover b l = drop ((b+1)-1) l

--Crie uma função que remova o ultimo elemento de uma lista
-- 1⁰ forma
lista1 :: [a] -> [a]
lista1 l = l
reverter l = reverse l
delete reverter l = drop 1 (reverter l)
voltar delete reverter l = reverse (delete reverter l)
final l = voltar delete reverter l

--observe que essa forma acima vai seguindo uma sequência lógica.
--primeiro eu setei a tipagem da lista
--depois eu nomeei essa lista de l
--depois eu reverti essa lista
--depois peguei essa lista revertida e tirei o primeiro elemento
--depois eu desreverti essa lista
--e depois, para diminuir a chamada dela, eu apenas nomeei ela de final e passei o parâmetro







