namespace ExerciciosPOO.Exercicio2
{
    class Pokemon
    {
        public string Nome { get; set; }

        public Pokemon(string nome)
        {
            Nome = nome;
        }

        public virtual void Atacar()
        {
            Console.WriteLine($"{Nome} realiza um ataque genérico!");
        }
    }
}
