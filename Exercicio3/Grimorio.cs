using System;
using System.Collections.Generic;

namespace ExerciciosPOO.Exercicio3
{
    class Grimorio
    {
        private List<Feitico> feiticos = new List<Feitico>();

        public void AdicionarFeitico(Feitico f)
        {
            feiticos.Add(f);
        }

        public void ListarFeiticos()
        {
            Console.WriteLine("Feitiços no Grimório:");
            foreach (var f in feiticos)
                Console.WriteLine($" - {f.Nome}");
        }
    }
}
