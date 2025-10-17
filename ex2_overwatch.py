from abc import ABC, abstractmethod

class Heroi(ABC):
    def __init__(self, nome: str, funcao: str):
        self.nome = nome
        self.funcao = funcao

    @abstractmethod
    def usar_ultimate(self):
        pass


class Tanque(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} (Tanque) usa sua Ultimate: Barreira Inquebrável!")


class Dano(Heroi):
    def usar_ultimate(self):
        print(f"{self.nome} (Dano) usa sua Ultimate: Rajada Explosiva!")


# Teste
if __name__ == "__main__":
    herois = [
        Tanque("Reinhardt", "Tanque"),
        Dano("Soldado 76", "Dano")
    ]

    for heroi in herois:
        heroi.usar_ultimate()
