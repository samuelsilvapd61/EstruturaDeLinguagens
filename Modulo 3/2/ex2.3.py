def fmap(f, lista):
    tamanho = len(lista)
    for i in range(0, tamanho):
        valor = f(lista.__getitem__(i))
        lista.pop(i)
        lista.insert(i, valor)


funcao = lambda x: x*3

lista = [3, 20, 8, 13, 33, 70, 34, 54, 21]
fmap(funcao, lista)
print(lista)
