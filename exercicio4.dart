import 'dart:io';

import 'dart:math';

String gerarSenha(int tamanho, {bool incluirEspeciais = false}) {
  const String letras = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
  const String numeros = '0123456789';
  const String especiais = '!@#\$%^&*()-_=+[]{}|;:,.<>?';

  String chars = letras + numeros;
  
  // Se incluirEspeciais for verdadeiro, adiciona caracteres especiais
  if (incluirEspeciais) {
    chars += especiais;
  }

  Random random = Random();
  String senha = '';

  for (int i = 0; i < tamanho; i++) {
    senha += chars[random.nextInt(chars.length)];
  }

  return senha;
}

void main() {
  // Exemplo de uso
  print(gerarSenha(12)); // Senha de 12 caracteres sem caracteres especiais
  print(gerarSenha(16, incluirEspeciais: true)); // Senha de 16 caracteres com caracteres especiais
}
