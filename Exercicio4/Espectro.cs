using System;

namespace ExerciciosPOO.Exercicio4
{
    class Espectro : MonstroSombrio
    {
        public Espectro(string nome) : base(nome) { }

        public override void Mover()
        {
            Console.WriteLine($"{Nome} desliza rapidamente pelo ar!");
        }
    }
}
