namespace ExerciciosPOO.Exercicio1
{
    class MembroDaSociedade
    {
        private string nome;
        private string raca;
        private string funcao;

        public MembroDaSociedade(string nome, string raca, string funcao)
        {
            this.nome = nome;
            this.raca = raca;
            this.funcao = funcao;
        }

        public void Descrever()
        {
            Console.WriteLine($"Nome: {nome} | Raça: {raca} | Função: {funcao}");
        }
    }
}
