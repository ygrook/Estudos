namespace Vetores3
{
    class Estudante
    {
        public string Nome { get; set; }
        public string Email { get; set; }

        public string Resp { get; set; }
        public Estudante(string nome, string email)
        {
            Nome = nome;
            Email = email;
        }

        public override string ToString()
        {
            return Nome + ", " + Email;
        }
    }
}