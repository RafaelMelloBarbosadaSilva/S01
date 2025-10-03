#include <iostream>
using namespace std;

class Personagem {
public:
    string nome;
    int nivel;
    int dano;
    int vida;

    void atacar(Personagem &alvo) {
        cout << nome << " atacou " << alvo.nome << " causando " << dano << " de dano!" << endl;
        alvo.vida -= dano;
        if (alvo.vida < 0) alvo.vida = 0;
    }

    void mostrarStatus() {
        cout << "Nome: " << nome << " | Nível: " << nivel 
             << " | Vida: " << vida << " | Dano: " << dano << endl;
    }
};

int main() {
    Personagem p1, p2;

    p1.nome = "Herói";
    p1.nivel = 5;
    p1.dano = 20;
    p1.vida = 100;

    p2.nome = "Vilão";
    p2.nivel = 4;
    p2.dano = 15;
    p2.vida = 80;

    cout << "Status inicial:" << endl;
    p1.mostrarStatus();
    p2.mostrarStatus();

    cout << "\nBatalha:" << endl;
    p1.atacar(p2);

    cout << "\nStatus após combate:" << endl;
    p1.mostrarStatus();
    p2.mostrarStatus();

    return 0;
}
