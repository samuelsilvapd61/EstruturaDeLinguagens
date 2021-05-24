data ListaInt = NoInt Int (ListaInt) | VazioInt

data Lista a = No a (Lista a) | Vazio

l :: Lista ListaInt
l = No (NoInt 10 VazioInt) (No (NoInt 30 VazioInt) Vazio)

main = putStrLn "OK"