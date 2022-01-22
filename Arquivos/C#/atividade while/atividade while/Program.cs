using System;

namespace atividade_while
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Digite a senha: ");
            int senha = int.Parse(Console.ReadLine());

            while (senha != 2002)
            {
                Console.WriteLine(" Senha incorreta");
                Console.Write("Digite novamente a senha: ");
                senha = int.Parse(Console.ReadLine());
            }

            Console.WriteLine("Acesso permetido");

        }
    }
}
