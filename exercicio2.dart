import 'dart:io';

void main() {
  print('Digite um número:');
  String? input = stdin.readLineSync(); // Lê a entrada como String
  int primo = int.parse(input!); // Converte a String para int

  bool ehPrimo = true;

  // Verifica se o número é primo
  for (int i = 2; i <= primo ~/ 2; i++) {
    if (primo % i == 0) {
      ehPrimo = false;
      break;
    }
  }

  // Exibe o resultado
  if (ehPrimo && primo > 1) {
    print('$primo é primo');
  } else {
    print('$primo não é primo');
  }
}
