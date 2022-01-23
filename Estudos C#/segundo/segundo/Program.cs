using System;
using System.Globalization;

namespace segundo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Entre com seu nome completo:");
            string nomeSobre = Console.ReadLine();
            Console.WriteLine("Quantos quartos tem na sua casa?");
            int quarto = int.Parse(Console.ReadLine());
            Console.WriteLine("Entre com o preço de um produto:");
            double valorProduto = double.Parse(Console.ReadLine());
            Console.WriteLine("Entre seu último nome, idade e altura:");
            string[] vet = Console.ReadLine().Split(' ');
            string ultimoNome = vet[0];
            int idade = int.Parse(vet[1]);
            double altura = double.Parse(vet[2]);

            Console.WriteLine(nomeSobre);
            Console.WriteLine(quarto);
            Console.WriteLine(valorProduto.ToString("F2", CultureInfo.InvariantCulture));
            Console.WriteLine(ultimoNome);
            Console.WriteLine(idade);
            Console.WriteLine(altura.ToString("F2", CultureInfo.InvariantCulture));

        }
    }
}
