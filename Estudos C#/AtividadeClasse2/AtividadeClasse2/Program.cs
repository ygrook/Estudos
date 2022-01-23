using System;
using System.Globalization;

namespace AtividadeClasse2
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Funcionario f1, f2;
            f1 = new Funcionario();
            f2 = new Funcionario();

            float SalarioM = 0;

            Console.WriteLine("Dados do primeiro funcionário:");
            Console.Write("Nome: ");
            f1.Nome = Console.ReadLine();
            Console.Write("Salario: ");
            f1.Salario = float.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
            Console.WriteLine("Dados do segundo funcionário:");
            Console.Write("Nome: ");
            f2.Nome = Console.ReadLine();
            Console.Write("Salario: ");
            f2.Salario = float.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
            
            SalarioM = (f1.Salario + f2.Salario) / 2;

            Console.WriteLine("Salário médio = " + SalarioM.ToString("F2", CultureInfo.InvariantCulture));

        }
    }
}
