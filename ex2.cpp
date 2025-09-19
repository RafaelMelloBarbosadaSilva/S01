#include <iostream>
using namespace std;

float somarArray(float arr[], int tamanho) {
    float aux = 0;
    for (int i = 0; i < tamanho; i++) {
        aux += arr[i];
    }
    return aux;
}

int main() {
    int tamanho;
    cin >> tamanho;

    float arr[tamanho];

    for (int i = 0; i < tamanho; i++) {
        cin >> arr[i];
    }

    cout << somarArray(arr, tamanho);

    return 0;
}
