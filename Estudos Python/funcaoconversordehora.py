def conversor(hora, minutos):
    if (hora >= 1 and hora < 12 and minutos >= 0 and minutos < 60):
        print(f"Seu horario convertido é: {hora}:{minutos} AM")
    elif (hora > 12 and hora <=24 and minutos >= 0 and minutos < 60):
        print(f"Seu horario convertido é: {hora - 12}:{minutos} PM")
    elif (hora == 0 and minutos >= 0 and minutos < 60):
        print(f"Seu horario convertido é: {hora}:{minutos} PM")
    elif (hora == 12 and minutos >= 0 and minutos < 60):
        print(f"Seu horario convertido é: {hora}:{minutos} AM")
    


hora = int(input("Digite a hora: "))
minutos = int(input("Digite o Minuto: "))

conversor(hora, minutos)
print(f"{conversor}")



    
        
