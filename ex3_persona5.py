class ArmaCorpoACorpo:
    def __init__(self, nome: str, dano: int):
        self.nome = nome
        self.dano = dano

    def __str__(self):
        return f"Arma: {self.nome} (Dano: {self.dano})"


class PhantomThieves:
    def __init__(self, nome: str, arma: ArmaCorpoACorpo):
        self.nome = nome
        self.arma = arma

    def __str__(self):
        return f"Membro: {self.nome} | {self.arma}"


class Joker:
    def __init__(self, nome_arma: str, dano_arma: int, equipe: list):
        # Composição
        self.arma = ArmaCorpoACorpo(nome_arma, dano_arma)
        # Agregação
        self.equipe = equipe

    def mostrar_equipe(self):
        print(f"Joker empunha {self.arma}")
        print("Equipe Phantom Thieves:")
        for membro in self.equipe:
            print(" -", membro)


# Teste
if __name__ == "__main__":
    arma_morgana = ArmaCorpoACorpo("Adaga Curva", 60)
    arma_ryuji = ArmaCorpoACorpo("Cano de Ferro", 75)

    morgana = PhantomThieves("Morgana", arma_morgana)
    ryuji = PhantomThieves("Ryuji", arma_ryuji)

    joker = Joker("Faca do Início", 90, [morgana, ryuji])
    joker.mostrar_equipe()
