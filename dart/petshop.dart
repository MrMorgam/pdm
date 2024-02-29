import 'dart:io';

void main() {
  petshop("cachorro");
}

void petshop(String animal, {String? nome, String? raca, double idade = 0}) {
  stdout.write(
    "Bem-vindo(a) ao Petshop!\nSeu bichinho é: ${animal}\nSeu nome é: ${nome ?? "desconhecido"}\nA raça do bichinho é: ${raca ?? "desconhecida"}\nSua idade é: ${idade} anos\n"
  );
}