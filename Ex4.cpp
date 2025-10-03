#include <iostream>
#include <list>
using namespace std;

class SerVivo {
protected:
    string nome;

public:
    SerVivo(string n) : nome(n) {}
    virtual void apresentar() {
        cout << "Eu sou um ser vivo chamado " << nome << "." << endl;
    }
    virtual ~SerVivo() {}
};

class Humano : public SerVivo {
public:
    Humano(string n) : SerVivo(n) {}
    void apresentar() override {
        cout << "Sou um humano chamado " << nome << "." << endl;
    }
};

class Elfo : public SerVivo {
public:
    Elfo(string n) : SerVivo(n) {}
    void apresentar() override {
        cout << "Sou um elfo elegante chamado " << nome << "." << endl;
    }
};

class Fada : public SerVivo {
public:
    Fada(string n) : SerVivo(n) {}
    void apresentar() override {
        cout << "Sou uma fada mágica chamada " << nome << "." << endl;
    }
};

int main() {
    list<SerVivo*> seres;

    seres.push_back(new Humano("Arthur"));
    seres.push_back(new Elfo("Legolas"));
    seres.push_back(new Fada("Tinker Bell"));

    for (SerVivo* s : seres) {
        s->apresentar();
    }

    for (SerVivo* s : seres) {
        delete s;
    }

    return 0;
}
