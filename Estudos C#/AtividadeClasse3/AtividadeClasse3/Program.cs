using System;
using System.Globalization;

namespace AtividadeClasse3
{
    internal class Program
    {
        static void Main(string[] args)
        {
 
            Console.WriteLine("Entre os dados do produto:");
            Console.Write("Nome: ");
            string nome = Console.ReadLine();
            Console.Write("Preço: ");
            double preco = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
        

            Produto p2 = new Produto(nome, preco);

            Produto p3 = new Produto
            {
                Nome = "TV",
                Preco = 900.00,
                Quantidade = 20
            };

            Console.WriteLine();
            Console.WriteLine("Dados do produto " + p);
            Console.WriteLine();

            Console.Write("Digite o número de produtos a ser adcionado ao estoque: ");
            int qte = int.Parse(Console.ReadLine());
            p.AdicionarProdutos(qte);

            Console.WriteLine();
            Console.WriteLine("Dados atualizados: " + p);

            Console.Write("Digite o número de produtos a ser removido ao estoque: ");
            qte = int.Parse(Console.ReadLine());
            p.RemoverProdutos(qte);

            Console.WriteLine();
            Console.WriteLine("Dados atualizados: " + p);
            
        }
    }
}
