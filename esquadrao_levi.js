class IExplorador {
  explorarTerritorio() {
    throw new Error("Método deve ser implementado.");
  }
}

class ODM_Gear {
  constructor(modelo, explosantes) {
    this.modelo = modelo;
    this.explosantes = explosantes;
  }

  getAlcance() {
    return this.explosantes * 10;
  }
}

class Soldado extends IExplorador {
  constructor(nome, modeloGear) {
    super();
    this.nome = nome;
    this.gear = new ODM_Gear(modeloGear, 3);
  }

  explorarTerritorio() {
    return `${this.nome} explora o território com ${this.gear.modelo}. Alcance: ${this.gear.getAlcance()}m`;
  }

  verificarEquipamento() {
    return `Equipamento: ${this.gear.modelo}`;
  }
}

class Esquadrao {
  constructor(lider) {
    this.lider = lider;
    this.soldados = [];
  }

  adicionarSoldado(soldado) {
    this.soldados.push(soldado);
  }

  relatarStatus() {
    return this.soldados.map(s => s.explorarTerritorio());
  }
}

// Demonstração
const levi = new Soldado("Levi", "ODM-MKIII");
const mikasa = new Soldado("Mikasa", "ODM-MKII");
const esquadrao = new Esquadrao(levi);
esquadrao.adicionarSoldado(levi);
esquadrao.adicionarSoldado(mikasa);

console.log(esquadrao.relatarStatus());
