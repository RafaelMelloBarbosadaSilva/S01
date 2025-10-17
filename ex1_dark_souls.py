class Personagem:
    def __init__(self, vida: int, resistencia: int):
        self._vida = vida
        self._resistencia = resistencia

    @property
    def vida(self):
        return self._vida

    @vida.setter
    def vida(self, valor):
        if valor < 0:
            self._vida = 0
        else:
            self._vida = valor

    def __str__(self):
        return f"Personagem com {self._vida} de vida e {self._resistencia} de resistência."


class Cavaleiro(Personagem):
    def __init__(self, vida: int, resistencia: int, armadura_pesada: bool):
        super().__init__(vida, resistencia)
        self.armadura_pesada = armadura_pesada

    def __str__(self):
        tipo_armadura = "possui armadura pesada" if self.armadura_pesada else "não possui armadura pesada"
        return f"Cavaleiro com {self._vida} de vida, {self._resistencia} de resistência e que {tipo_armadura}."


# Teste
if __name__ == "__main__":
    p1 = Personagem(100, 50)
    c1 = Cavaleiro(150, 80, True)
    print(p1)
    print(c1)
