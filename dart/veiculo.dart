class Veiculo{
  String modelo;
  String cor;
  double velocidade;
  double peso;

  Veiculo(this.modelo, this.cor, this.velocidade, this.peso);
}

class Aviao extends Veiculo{
  int assentos;

  Aviao(String modelo, String cor, double velocidade, double peso, this.assentos): super(modelo, cor, velocidade, peso);
}

class Carro extends Veiculo{
  int portas;

  Carro(String modelo, String cor, double velocidade, double peso, this.portas): super(modelo, cor, velocidade, peso);
}

void main() {
  Aviao aviao01 = new Aviao('Boeing 747', 'branco', 900, 200000, 600);
  Carro carro01 = new Carro('Fiat Uno', 'Azul escuro', 150, 800, 2);

  print('O avião "${aviao01.modelo}" possui ${aviao01.assentos} assento(s)');
  print('O carro "${carro01.modelo}" possui ${carro01.portas} portas');
}