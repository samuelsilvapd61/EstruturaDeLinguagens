data Lista a = No a (Lista a) | Vazio
    deriving Show

l = No 10 (No 20 (No 30 Vazio) )

filterP :: (a -> Bool) -> Lista a -> Lista a
filterP f l =
    case l of
        Vazio -> Vazio
        No x resto -> 
            case (f x) of
                True -> No x (filterP f resto)
                False -> (filterP f resto)
    

l2 = filterP(\x -> x>15) l

main = print(l2)