data Arvore a = Galho (Arvore a) a (Arvore a) | Folha
    deriving Show
    
l :: Arvore Int
l = Galho   (Galho Folha 2 Folha)
        1 
            (Galho Folha 3 (Galho Folha 4 Folha))
    
data Lista a = No a (Lista a) (Lista a) | Vazio
    deriving Show
    
lista :: Arvore a -> Lista a    
lista Folha = Vazio 
lista (Galho e a d) = No a (lista e) (lista d)

l2 :: Lista Int
l2 = lista l

main = print(l2)