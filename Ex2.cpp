#include <iostream>
using namespace std;

class Pessoa {
private:
    string nome;
    int idade;

public:
    void setNome(string n) { nome = n; }
    void setIdade(int i) { idade = i; }
    string getNome() { return nome; }
    int getIdade() { return idade; }
};

class Protagonista : public Pessoa {
private:
    int nivel;

public:
    void setNivel(int n) { nivel = n; }
    int getNivel() { return nivel; }
};

class Personagem : public Pessoa {
private:
    int rank; // 0 a 10

public:
    void setRank(int r) { 
        if(r >= 0 && r <= 10) rank = r;
        else rank = 0;
    }
    int getRank() { return rank; }
};

int main() {
    Protagonista p;
    p.setNome("Akira");
    p.setIdade(17);
    p.setNivel(5);

    Personagem aliado;
    aliado.setNome("Ryuji");
    aliado.setIdade(17);
    aliado.setRank(7);

    cout << "Protagonista: " << p.getNome() << " (Idade: " << p.getIdade() << ", Nível: " << p.getNivel() << ")" << endl;
    cout << "Aliado: " << aliado.getNome() << " (Idade: " << aliado.getIdade() << ", Rank: " << aliado.getRank() << ")" << endl;

    return 0;
}
