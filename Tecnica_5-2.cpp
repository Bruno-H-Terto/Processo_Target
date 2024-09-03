#include <iostream>
#define TAM 256

using namespace std;

void inverte(const char str[], char inverso[]) {
    int len = 0;
    while (str[len] != '\0') {
        len++;
    }

    for (int i = 0; i < len; i++) {
        inverso[i] = str[len - 1 - i];
    }
    inverso[len] = '\0';
}

int main() {
    char texto[TAM];
    cout << "Digite seu texto: " << endl;
    cin.getline(texto, TAM);

    char texto_invertido[TAM];
    inverte(texto, texto_invertido);

    cout << "O seu texto original:" << endl;
    cout << '"' << texto << '"' << endl;
    cout << "Foi invertido para:" << endl;
    cout << '"' << texto_invertido << '"' << endl;

    return 0;
}
