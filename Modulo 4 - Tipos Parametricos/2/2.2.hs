data ListaInt = NoInt Int (ListaInt) | VazioInt
    deriving Show

data Arvore a = Galho (Arvore a) a (Arvore a) | Folha
    deriving Show

lb :: Arvore Bool
lb = Galho (Galho (Galho (Folha) False (Folha)) True (Folha)) True (Galho (Folha) True (Folha))

li :: Arvore ListaInt
li = Galho (Folha) (NoInt 1 VazioInt) (Galho (Folha) (NoInt 2 VazioInt) (Folha))


main = print(lb, " - ", li)