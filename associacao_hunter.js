class IRastreavel {
  rastrearLocal(lat, long) {
    throw new Error("Deve implementar rastrearLocal()");
  }
}

class Hunter extends IRastreavel {
  constructor(nome, local, idade) {
    super();
    this.nome = nome;
    this.localizacao = local;
    this.idade = idade;
  }

  rastrearLocal(lat, long) {
    console.log(`${this.nome} rastreando genericamente... (${lat}, ${long})`);
  }
}

class Especialista extends Hunter {
  constructor(nome, local, idade, habilidade) {
    super(nome, local, idade);
    this.habilidade = habilidade;
  }

  rastrearLocal(lat, long) {
    console.log(`${this.nome} usa ${this.habilidade} para rastrear (${lat}, ${long}).`);
  }
}

class Manipulador extends Hunter {
  constructor(nome, local, idade, alvoAtual) {
    super(nome, local, idade);
    this.alvoAtual = alvoAtual;
  }

  rastrearLocal(lat, long) {
    console.log(`${this.nome} manipula ${this.alvoAtual} e rastreia em (${lat}, ${long}).`);
  }
}

class Batalhao {
  constructor() {
    this.hunters = new Set();
  }

  adicionarHunter(hunter) {
    this.hunters.add(hunter);
  }

  getNumeroHunters() {
    return this.hunters.size;
  }

  iniciarRastreamento(lat, long) {
    console.log("=== Iniciando rastreamento ===");
    this.hunters.forEach(h => h.rastrearLocal(lat, long));
  }
}

// Demonstração
const gon = new Especialista("Gon", "Montanhas", 14, "Sentido Afiado");
const hisoka = new Manipulador("Hisoka", "Arena", 28, "Cartas");
const batalhao = new Batalhao();
batalhao.adicionarHunter(gon);
batalhao.adicionarHunter(hisoka);

batalhao.iniciarRastreamento(10, 20);
