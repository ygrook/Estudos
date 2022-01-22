#Faça um programa com uma função chamada somaImposto. 
# A função possui dois parâmetros formais: taxaImposto, que é 
# a quantia de imposto sobre vendas expressa em porcentagem e custo, que é o custo de um item antes do
#imposto. A função "altera" o valor de custo para incluir o imposto sobre vendas.

def CalcularsomaImposto(taxaImposto, custo):
    resImposto = custo + (custo + taxaImposto / 100)
    return resImposto

taxa = float(input("Digite a taxa de imposto: "))
custo = float(input("Digite o custo: "))

somaImposto = CalcularsomaImposto(taxa, custo)

print(f"O seu imposto é: ", somaImposto)