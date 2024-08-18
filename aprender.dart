import 'dart:io';

void main() {
  print('Digite o número de segundos:');
  String? input = stdin.readLineSync(); // Lê a entrada como String
  int totalSegundos = int.parse(input!); // Converte a String para int

  int horas = totalSegundos ~/ 3600; // Calcula as horas
  int minutos = (totalSegundos % 3600) ~/ 60; // Calcula os minutos
  int segundos = totalSegundos % 60; // Calcula os segundos restantes

  print('Tempo: $horas horas, $minutos minutos e $segundos segundos');
}

// sempre necessário usar nova variável = váriavel