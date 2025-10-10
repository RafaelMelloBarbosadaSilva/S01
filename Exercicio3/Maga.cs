using System;
using System.Collections.Generic;

namespace ExerciciosPOO.Exercicio3
{
    class Maga
    {
        public string Nome { get; set; }
        public Grimorio GrimorioPessoal { get; private set; }
        public List<Ferramenta> Ferramentas { get; private set; }

        public Maga(string nome, List<Ferramenta> ferramentas)
        {
            Nome = nome;
            GrimorioPessoal = new Grimorio();
            Ferramentas = ferramentas;
        }

        public void MostrarFerramentas()
        {
            Console.WriteLine($"Ferramentas de {Nome}:");
            foreach (var f in Ferramentas)
                Console.WriteLine($" - {f.Nome}");
        }
    }
}
