using System;
using System.Collections.Generic;
using ExerciciosPOO.Exercicio1;
using ExerciciosPOO.Exercicio2;
using ExerciciosPOO.Exercicio3;
using ExerciciosPOO.Exercicio4;

namespace ExerciciosPOO
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("=== EXERCÍCIO 1 ===");
            MembroDaSociedade aragorn = new MembroDaSociedade("Aragorn", "Humano", "Guardião");
            MembroDaSociedade legolas = new MembroDaSociedade("Legolas", "Elfo", "Arqueiro");
            aragorn.Descrever();
            legolas.Descrever();

            Console.WriteLine("\n=== EXERCÍCIO 2 ===");
            List<Pokemon> listaPokemons = new List<Pokemon>
            {
                new PokemonDeFogo("Charizard"),
                new PokemonDeAgua("Blastoise")
            };
            foreach (var p in listaPokemons)
                p.Atacar();

            Console.WriteLine("\n=== EXERCÍCIO 3 ===");
            List<Ferramenta> ferramentas = new List<Ferramenta>
            {
                new Ferramenta("Lanterna"),
                new Ferramenta("Mapa Mágico"),
                new Ferramenta("Cajado Antigo")
            };
            Maga frieren = new Maga("Frieren", ferramentas);
            frieren.GrimorioPessoal.AdicionarFeitico(new Feitico("Raio de Gelo"));
            frieren.GrimorioPessoal.AdicionarFeitico(new Feitico("Escudo de Mana"));
            frieren.GrimorioPessoal.ListarFeiticos();
            frieren.MostrarFerramentas();

            Console.WriteLine("\n=== EXERCÍCIO 4 ===");
            MonstroSombrio[] horda = new MonstroSombrio[]
            {
                new Zumbi("Zumbi Lento"),
                new Espectro("Espectro Rápido")
            };
            foreach (var monstro in horda)
                monstro.Mover();
        }
    }
}
