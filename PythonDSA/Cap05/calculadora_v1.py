# Calculadora em Python

# Desenvolva uma calculadora em Python com tudo que você aprendeu nos capítulos até aqui no curso. 
# A solução será apresentada no próximo capítulo!

# Exiba Selecione o número da operação desejada:
print("\n******************* Calculadora em Python *******************")

print('Exiba Selecione o número da operação desejada: ')
print('1 - Soma')
print('2 - Subtração')
print('3 - Multiplicação')
print('4 - Divisão')

op = int(input('Digite sua opção (1/2/3/4): '))

num1 = int(input('Digite o primeiro número: '))
num2 = int(input('Digite o segundo número: '))

resul = 0

if op == 1:
    sinal = '+'
    resul =  num1 + num2
elif op == 2:
    sinal = '-'
    resul = x: num1 - num2 
elif op == 3:
    sinal = '*'
    resul = x: num1 * num2
elif op == 4:
    sinal = '/'
    resul = x: num1 / num2
else:
    print ('Opção Invalida')

print(num1, sinal, num2, '= ', resul)



