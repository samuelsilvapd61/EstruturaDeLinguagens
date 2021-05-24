-- Cada personagem tem Altura e Idade
data Base = Base Double Int

-- O personagem e:
-- Um Guerreiro que tem forca
-- Um Mago que tem magia
-- Um Sacerdote que tem resistencia
data Personagem = Guerreiro Base Int | Mago Base Double | Sacerdote Base Int

p1 :: Personagem
p1 = Guerreiro (Base 1.8 23) 5

main = print("OK")