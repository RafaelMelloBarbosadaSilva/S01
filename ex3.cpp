#include <iostream>
using namespace std;

int main() {
    int quantidade;
    cout << "Quantas notas deseja inserir? ";
    cin >> quantidade;

    float nota, soma = 0;

    for (int i = 0; i < quantidade; i++) {
        cout << "Digite a nota " << i + 1 << ": ";
        cin >> nota;

        // validação da nota
        while (nota < 0 || nota > 10) {
            cout << "Nota inválida! Digite novamente (entre 0 e 10): ";
            cin >> nota;
        }

        soma += nota;
    }

    float media = soma / quantidade;

    cout << "Média final = " << media << endl;

    if (media >= 7) {
        cout << "Aprovado" << endl;
    } else {
        cout << "Reprovado" << endl;
    }

    return 0;
}
