using System;

namespace ExerciciosPOO.Exercicio4
{
    class Zumbi : MonstroSombrio
    {
        public Zumbi(string nome) : base(nome) { }

        public override void Mover()
        {
            Console.WriteLine($"{Nome} se arrasta lentamente...");
        }
    }
}
