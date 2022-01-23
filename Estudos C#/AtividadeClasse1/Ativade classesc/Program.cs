using System;

namespace Ativade_classesc
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Pessoa p1, p2;
            p1 = new Pessoa();
            p2 = new Pessoa();

            Console.WriteLine("Dados da primeira pessoa:");
            Console.Write("nome: ");
            p1.Nome = (Console.ReadLine());
            Console.Write("Idade: ");
            p1.Idade = int.Parse(Console.ReadLine());

            Console.WriteLine("Dados da segunda pessoa:");
            Console.Write("Nome: ");
            p2.Nome = (Console.ReadLine());
            Console.Write("Idade: ");
            p2.Idade = int.Parse(Console.ReadLine());
            
            if (p1.Idade > p2.Idade)
            {
                Console.WriteLine("Pessoa mais velha: " + p1.Nome);
            } else
            {
                Console.WriteLine("Pessoa mais velha " + p2.Nome);
            }

        }
    }
}
