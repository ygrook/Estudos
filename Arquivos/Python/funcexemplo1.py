
def CalcularMedia(n1,n2,n3,n4):
    return (n1 + n2 + n3 + n4) / 4

nota1 = float(input("Digite nota 1: "))
nota2 = float(input("Digite nota 2: "))
nota3 = float(input("Digite nota 3: "))
nota4 = float(input("Digite nota 4: "))

media = CalcularMedia(nota1, nota2, nota3, nota4)

print(f"Sua nota é:", media)