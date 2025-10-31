class Criatura {
  constructor(nome, perigosa) {
    this.nome = nome;
    this.perigosa = perigosa;
  }
}

class Diario {
  #autorSecreto;
  constructor(autor) {
    this.#autorSecreto = autor;
    this.enigmas = new Map();
    this.criaturasListadas = [];
  }

  getAutor() {
    return this.#autorSecreto;
  }

  adicionarEnigma(num, enigma) {
    this.enigmas.set(num, enigma);
  }

  decodificar(chave, num) {
    if (chave !== this.#autorSecreto) {
      console.log("Acesso negado!");
      return null;
    }
    const resultado = this.enigmas.get(num);
    console.log(`Enigma decodificado: ${resultado}`);
    return resultado;
  }
}

class Personagem {
  constructor(nome, idade) {
    this.nome = nome;
    this.idade = idade;
  }
}

class CabanaMisterio {
  constructor(diario) {
    this.diario = diario;
    this.funcionarios = [];
  }

  adicionarFuncionario(personagem) {
    this.funcionarios.push(personagem);
  }

  listarFuncionarios() {
    return this.funcionarios;
  }
}

class Protagonista extends Personagem {
  constructor(nome, idade) {
    super(nome, idade);
    this.diario = new Diario(nome);
  }
}

// Demonstração
const dipper = new Protagonista("Dipper", 13);
dipper.diario.adicionarEnigma(1, "A cabra de três olhos");
dipper.diario.decodificar("Dipper", 1);

const cabana = new CabanaMisterio(dipper.diario);
cabana.adicionarFuncionario(new Personagem("Soos", 22));
cabana.adicionarFuncionario(new Personagem("Wendy", 16));

console.log("Funcionários:", cabana.listarFuncionarios());
