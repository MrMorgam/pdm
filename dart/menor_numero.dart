void main() {
  int primeiro = 11, segundo = 20, terceiro = 3;

  int menor_numero = menor_valor(segundo, terceiro, primeiro);

  print('O menor valor é o número: ${menor_numero}');

}


int menor_valor(int val01, int val02, int val03) {
  List valores = [val01, val02, val03];
  int menor_valor = valores[0];

  for(int i = 1; i < 3; i++) {
    if (menor_valor > valores[i]) {
        menor_valor = valores[i];
    }
  }

  return menor_valor;
}