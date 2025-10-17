from abc import ABC, abstractmethod

class Cibernetico(ABC):
    @abstractmethod
    def realizar_hack(self):
        pass


class Implante:
    def __init__(self, custo: float, funcao: str):
        self.custo = custo
        self.funcao = funcao

    def __str__(self):
        return f"Implante: {self.funcao} (Custo: {self.custo} créditos)"


class NetRunner(Cibernetico):
    def __init__(self, nome: str, custo_implante: float, funcao_implante: str):
        self.nome = nome
        self.implante = Implante(custo_implante, funcao_implante)

    def realizar_hack(self):
        print(f"{self.nome} executa hack usando {self.implante.funcao}!")


class Faccao:
    def __init__(self, nome: str, membros: list):
        self.nome = nome
        self.membros = membros

    def atacar_rede(self):
        print(f"Facção {self.nome} iniciando invasão cibernética:")
        for membro in self.membros:
            membro.realizar_hack()


# Teste
if __name__ == "__main__":
    n1 = NetRunner("V", 5000, "Implante Neural de Invasão")
    n2 = NetRunner("Alt Cunningham", 8000, "Interface Cibernética Avançada")

    faccao = Faccao("NetWatch", [n1, n2])
    faccao.atacar_rede()
