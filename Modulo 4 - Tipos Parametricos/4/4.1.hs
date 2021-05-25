data Arvore a = Galho (Arvore a) a (Arvore a) | Folha
    deriving Show

l :: Arvore Int
l = Galho   (Galho Folha 2 Folha)
        1 
            (Galho Folha 3 (Galho Folha 4 Folha))

folhas :: Arvore a -> Int
folhas l =
    case l of
        (Galho e _ d) -> folhas e + folhas d 
        Folha -> 1


main = print (folhas l)