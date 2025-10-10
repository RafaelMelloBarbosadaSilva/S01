namespace ExerciciosPOO.Exercicio2
{
    class PokemonDeAgua : Pokemon
    {
        public PokemonDeAgua(string nome) : base(nome) { }

        public override void Atacar()
        {
            Console.WriteLine($"{Nome} lança um jato de água!");
        }
    }
}
