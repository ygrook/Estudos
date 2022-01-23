using System;
using System.Globalization;

namespace ConsoleApp1
{
    internal class Program
    {
        static void Main(string[] args)
        {
            string produto1 = "Computador";
            string produto2 = "Mesa de escritório";

            byte idade = 30;
            int codigo = 5290;
            char genero = 'M';

            double preco = 2100.0;
            double preco2 = 650.50;
            double medida = 53.234567;

            Console.WriteLine("Produto:");
            Console.WriteLine(produto1 + ", cujo o preço é $" + preco.ToString("F1"));
            Console.WriteLine(produto2 + ", cujo o preço é $" + preco2.ToString("F2"));
            Console.WriteLine("");
            Console.WriteLine("Registro: " + idade + " anos de idade, codigo " + codigo + " e gênero: " + genero);
            Console.WriteLine("Medida com oito casas decimais: " + medida);
            Console.WriteLine("Arrendodando (três casas decimais): " + medida.ToString("F3"));
            Console.WriteLine("Separador decimal: "  + medida.ToString("F3", CultureInfo.InvariantCulture));

        }
    }
}
