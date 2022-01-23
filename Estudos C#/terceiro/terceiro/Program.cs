using System;

namespace terceiro
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Digite numero inteiro: ");
            int x = int.Parse(Console.ReadLine());

            if (x % 2 == 0)
            {
                Console.WriteLine("Par !");
            } else
            {
                Console.WriteLine("impar! ");
            }
        }
    }
}
