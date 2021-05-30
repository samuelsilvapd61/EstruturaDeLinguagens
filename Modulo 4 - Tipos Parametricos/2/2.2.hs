data Lista a = No a (Lista a) | Vazio
    deriving Show

data Arvore a = Galho (Arvore a) a (Arvore a) | Folha
    deriving Show

lb :: Arvore Bool
lb = Galho (Galho (Galho (Folha) False (Folha)) True (Folha)) True (Galho (Folha) True (Folha))

li :: Arvore (Lista Int)
li = Galho (Folha) (No 1 Vazio) (Galho (Folha) (No 2 Vazio) (Folha))


main = print(lb, " - ", li)