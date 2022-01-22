using System;
using System.Globalization;

namespace AtividadeClasse5
{
    class Funcionario
    {
        string Nome;
        double SalarioBruto;
        double Imposto;

        public double SalarioLiquido()
        {
            return SalarioBruto - Imposto;  
        }

        public override string ToString()
        {
            return "Funcionario: " 
                + Nome 
                + ", $" 
                + SalarioLiquido().ToString("F2", CultureInfo.InvariantCulture);    
        }
    }
}
