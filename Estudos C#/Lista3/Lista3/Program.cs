using System;
using System.Globalization;
using System.Collections.Generic;

namespace Lista3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("How many employees will be registred? ");
            int n = int.Parse(Console.ReadLine());

            List<Employees> list = new List<Employees>();

            for (int i = 0; i <= n; i++)
            {
                Console.WriteLine("Employee #" + i + ":");
                Console.Write("Id: ");
                int id = int.Parse(Console.ReadLine());
                Console.Write("Name: ");
                string name = Console.ReadLine();
                Console.Write("Salary: ");
                double salary = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
                list.Add(new Employees(id, name, salary));
                Console.WriteLine();
            }


            Console.Write("Enter the employee id that will have slsary increase : ");
            int searchId = int.Parse(Console.ReadLine());


            Employees emp = list.Find(x => x.Id == searchId);
            if (emp != null)
            {
                Console.Write("Enter the percentage: ");
                double percentage = double.Parse(Console.ReadLine(), CultureInfo.InvariantCulture);
                emp.IncreaseSalary(percentage);
            }
            else
            {
                Console.WriteLine("Theis id does not exist");
            }

            Console.WriteLine();
            Console.WriteLine("Update list of employees: ");
            foreach (Employees obj in list)
                Console.WriteLine(obj);
        }
    }
}
