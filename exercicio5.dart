import 'dart:io';

void main(){
  print('Insira a nota para cálculo de 1 a 10');
  String? input = stdin.readLineSync();
  int nota = int.parse(input!);

  if(nota >= 6 &&  nota <= 10){
    print('Aprovado');
  }
  if(nota >= 4 && nota < 6 ){
    print('recuperação');
  }
  if(nota <4 && nota >= 0){
    print("reprovado");
  }
  if(nota > 10 || nota <0){
    print('comando invalido');
  }
}