data Arvore a = Galho (Arvore a) a (Arvore a) | Folha
    deriving Show

l :: Arvore Int
l = Galho   (Galho Folha 2 Folha)
        1 
            (Galho Folha 3 (Galho Folha 4 Folha))

mapA :: (a -> b) -> Arvore a -> Arvore b
mapA f l =
    case l of
        Folha -> Folha
        (Galho e a d) -> Galho (mapA f e) (f a) (mapA f d)
        
l2 = mapA(*3) l

main = print(l2)