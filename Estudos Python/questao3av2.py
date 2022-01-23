# -*- coding: utf-8 -*-
"""
Classe Microondas: Faça um programa em linguagem Python que simule um microondas criando-o como um objeto. 

Atributos: cor, tamanho, opcaoAlimento, potencia.
Métodos: alterarOpcaoAlimento, aumentarPotencia, diminuirPotencia

O usuário deve ser capaz de informar a opção do alimento e aumentar ou diminuir a potencia. 

Certifique-se de :
que o valor da potência permanecem dentro de faixas válidas.
que os alimentos estão entre (DESCONGELAR, RÁPIDO, GOURMET, KIDS, LIGHT, FAVORITOS)Leitura Avançada
"""

class Microondas():

    def __init__(self, cor:str, tamanho:float, opcaoAlimento:str, potencia:int):
        self.cor = cor
        self.tamanho = tamanho
        self.opcaoAlimento = opcaoAlimento
        self.potencia = potencia

    def alterarOpcaoAlimento(self, alimento:str):
        self.opcaoAlimento = alimento
        print(f"O seu alimento agora e: {self.opcaoAlimento}")
    
    def aumentarPotencia(self, potencia:int):
        if(self.potencia < potencia): print("Para diminuir a pontecia voce deve chamar outro metodo")
        else:
            self.potencia = potencia
            print(f"A sua potencia agora e: {self.potencia}")
        
    def diminuirPotencia(self, potencia:int):
        if(self.potencia < potencia): print("Para aumentar a pontecia voce deve chamar outro metodo")
        else:
            self.potencia = potencia
            print(f"A sua potencia agora e: {self.potencia}")
            
    def descongelarAlimento(self, potencia:int):
        self.potencia = 150
        print("+--Desongelando alimento em alta potência--+")
    
    def rapido(self, potencia:int):
        self.potencia = 130
        print("Esquentando em modo Rápido")
    
    def gourmet(self, potencia:int):
        self.potencia = 70
        print("Esquentando em modo Gourmet")

    def kids(self, potencia:int):
       self.potencia = 30
       print("Esquentando em modo Kids") 
    
    def ligh(self, potencia:int):
       self.potencia = 50
       print("Esquentando em modo Ligh") 
#PARA TESTAR CADA METEDO, TIRE O COMENTARIO DE CADA METODO

#Para criar um objeto: Digite a cor, o tamnho, o alimento e a potencia
microondas = Microondas("cor", 1.0, "alimento", 100)

potencia = 50
print("Potencia Atual: ", potencia)

#Para mudar o alimento: Digite o nome do 
alterarOpcaoAlimento = str(input("Digite o alimento: ",))
print("Seu alimento agora é: ", alterarOpcaoAlimento)

print("Escolha a opção abaixo: ")
print("1. Aumentar potencia")
print("2. diminuir potencia")
print("3, descongelar Alimento")
print("4. Rapido")
print("5. Gourmet")
print("6. kids")
print("7. Light")
print("8. Favoritos")
op = int(input("Digite a opção desejada: "))

while True:
    if(op == 1):
        microondas.aumentarPotencia(potencia+10)
        break
    elif(op == 2):
        microondas.diminuirPotencia(potencia-10)
        break
    elif(op == 3):
        microondas.descongelarAlimento(potencia)
        break
    elif(op == 4):
        microondas.rapido(potencia)
        break
    elif(op == 5):
        microondas.gourmet(potencia)
        break
    elif(op == 6):
        microondas.kids(potencia)
        break
    elif(op == 7):
        microondas.ligh(potencia)
        break          