def converta(h, m):
    if 0 >= h <= 12:
        print(f'{h}:{m} AM')
    elif 12 > h <= 24:
        print(f'{h - 12}:{m} PM')
    else:
        print('Valor inválido')


while True:
    h = int(input('Hora: '))
    if h == 999: break
    m = int(input('Minuto: '))
    converta(h,m)
    print('='*12)