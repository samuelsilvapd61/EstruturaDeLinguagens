data ListaInt = NoInt Int (ListaInt) | VazioInt
    deriving Show

data Lista a = No a (Lista a) | Vazio
    deriving Show

l :: Lista ListaInt
l = No (NoInt 10 VazioInt) (No (NoInt 30 VazioInt) Vazio)

main = print(l)