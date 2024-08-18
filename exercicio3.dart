import 'dart:io';

void main() {
  print('Selecione o desconto normal apertando 1 ou selecione o desconto especial selecionando 2');
  String? input = stdin.readLineSync(); // Lê a escolha do usuário
  int teste = int.parse(input!);

  // Verifica se o usuário selecionou o desconto normal ou especial
  if (teste == 1) {
    print('Digite o preço:');
    String? precoInput = stdin.readLineSync(); // Lê o preço do usuário
    int preco = int.parse(precoInput!); // Converte para int
    int precofixo = preco - 10; // Aplica desconto fixo de 10 unidades
    print('O valor com desconto normal é: $precofixo');
  } 
  else if (teste == 2) {
    print('Digite o preço:');
    String? precoInput = stdin.readLineSync(); // Lê o preço do usuário
    int preco = int.parse(precoInput!); // Converte para int
    double precoperc = preco - (preco * 0.10); // Aplica desconto de 10%
    print('O valor com desconto especial é: $precoperc');
  } 
  else {
    print('Opção inválida.');
  }
}
