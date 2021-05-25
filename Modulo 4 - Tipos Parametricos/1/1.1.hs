-- Cada personagem tem Altura e Idade
data Base = Base Double Int
    deriving Show

-- O personagem e:
-- Um Guerreiro que tem forca
-- Um Mago que tem magia
-- Um Sacerdote que tem reza
data Personagem = Guerreiro Base Int | Mago Base Double | Sacerdote Base Int
    deriving Show
 

p1 :: Personagem
p1 = Guerreiro (Base 1.8 23) 50

p2 :: Personagem
p2 = Mago (Base 1.6 46) 80

main = print(p1," - ",p2)