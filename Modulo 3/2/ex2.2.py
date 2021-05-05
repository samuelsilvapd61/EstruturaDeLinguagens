def ffilter(f, listacopia):
    listanova = []

    if len(listacopia[1:]) > 0:
        listanova = ffilter(f, listacopia[1:])

    valor = listacopia.__getitem__(0)
    if f(valor):
        listanova.insert(0, valor)

    return listanova[:]


funcao = lambda x: True if x > 30 else False

lista = [3, 20, 8, 13, 33, 70, 34, 54, 21]
print(ffilter(funcao, lista))
