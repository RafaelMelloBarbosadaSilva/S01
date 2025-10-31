class Pokemon {
  #vida;
  constructor(nome, tipo, vidaInicial) {
    this.nome = nome;
    this.tipo = tipo;
    this.#vida = vidaInicial;
  }

  getVida() {
    return this.#vida;
  }

  receberDano(dano) {
    this.#vida -= dano;
    if (this.#vida < 0) this.#vida = 0;
  }

  atacar(alvo) {
    console.log(`${this.nome} realiza um ataque genérico em ${alvo.nome}`);
    alvo.receberDano(10);
  }
}

class PokemonFogo extends Pokemon {
  constructor(nome, vidaInicial, bonusAtaque) {
    super(nome, "Fogo", vidaInicial);
    this.bonusAtaque = bonusAtaque;
  }

  atacar(alvo) {
    const dano = 15 + this.bonusAtaque;
    console.log(`${this.nome} lança uma bola de fogo em ${alvo.nome}, causando ${dano} de dano!`);
    alvo.receberDano(dano);
  }
}

class PokemonAgua extends Pokemon {
  constructor(nome, vidaInicial, curaBase) {
    super(nome, "Água", vidaInicial);
    this.curaBase = curaBase;
  }

  atacar(alvo) {
    console.log(`${this.nome} usa jato d'água em ${alvo.nome}!`);
    alvo.receberDano(12);
    console.log(`${this.nome} se cura em ${this.curaBase} pontos.`);
  }
}

// Demonstração
const charmander = new PokemonFogo("Charmander", 100, 5);
const squirtle = new PokemonAgua("Squirtle", 100, 3);

charmander.atacar(squirtle);
squirtle.atacar(charmander);
console.log("Vida Charmander:", charmander.getVida());
console.log("Vida Squirtle:", squirtle.getVida());
