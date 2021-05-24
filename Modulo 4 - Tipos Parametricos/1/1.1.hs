data Base = Base Double Int

data Personagem = Guerreiro Base Int | Mago Base Double | Sacerdote Base Int

p1 :: Personagem
p1 = Guerreiro (Base 1.8 23) 5

main = print("OK")