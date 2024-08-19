import 'dart:io';

void main(){

  print('Informe o primeiro lado do triangulo');
  String? input = stdin.readLineSync();
  int A = int.parse(input!);
  print('Informe o segundo lado do triangulo');
  String? secinput = stdin.readLineSync();
  int B = int.parse(secinput!);
  print('informe o terceiro lado do triangulo');
  String? terceinput = stdin.readLineSync();
  int C = int.parse(terceinput!);

  if( A < (B+C) && B < (A + C) && C < (A + B) ){
    if(A == B && A != C || C == A && C != B || B == C && B != A ){
      print('O triangulo é isóceles');
    }  
    else if( A == B && B == C){
      print('O triangulo é equilátero');
    }
    else{
      print('O triangulo é escaleno');
    }
   
  }

}