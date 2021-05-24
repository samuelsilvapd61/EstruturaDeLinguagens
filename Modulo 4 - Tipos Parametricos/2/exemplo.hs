--data ListaInt = No Int ListaInt | Vazio

data Lista a = No a (Lista a) | Vazio


--l1 :: ListaInt
--l1 = No 10 (No 20 (No 30 Vazio))

l2 :: Lista Int
l2 = No 10 (No 20 (No 30 Vazio))

l3 :: Lista Bool
l3 = No True (No False Vazio)

main = putStrLn "OK"