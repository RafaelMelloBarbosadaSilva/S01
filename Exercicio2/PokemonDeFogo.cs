namespace ExerciciosPOO.Exercicio2
{
    class PokemonDeFogo : Pokemon
    {
        public PokemonDeFogo(string nome) : base(nome) { }

        public override void Atacar()
        {
            Console.WriteLine($"{Nome} lança uma rajada de fogo!");
        }
    }
}
