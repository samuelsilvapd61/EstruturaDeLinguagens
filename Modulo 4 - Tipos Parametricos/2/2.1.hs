data Lista a = No a (Lista a) | Vazio
    deriving Show

l :: Lista (Lista Int)
l = No (No 10 Vazio) (No (No 30 Vazio) Vazio)

main = print(l)