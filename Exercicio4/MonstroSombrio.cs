namespace ExerciciosPOO.Exercicio4
{
    abstract class MonstroSombrio
    {
        public string Nome { get; set; }

        protected MonstroSombrio(string nome)
        {
            Nome = nome;
        }

        public abstract void Mover();
    }
}
