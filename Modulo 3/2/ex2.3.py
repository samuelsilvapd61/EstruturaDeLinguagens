def fmap(f, lista):
    for i in range(0, len(lista)):
        lista.insert(i, f(lista.pop(i)))


funcao = lambda x: x*3

lista = [3, 20, 8, 13, 33, 70, 34, 54, 21]
fmap(funcao, lista)
print(lista)
