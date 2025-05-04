/* Média 2
Leia 3 valores, no caso, variáveis A, B e C, que são as três notas de um aluno. A seguir, calcule a média do aluno, sabendo que a nota A tem peso 2, a nota B tem peso 3 e a nota C tem peso 5. Considere que cada nota pode ir de 0 até 10.0, sempre com uma casa decimal.

Entrada
O arquivo de entrada contém 3 valores com uma casa decimal, de dupla precisão (double).

Saída
Imprima a mensagem "MEDIA" e a média do aluno conforme exemplo abaixo, com 1 dígito após o ponto decimal e com um espaço em branco antes e depois da igualdade. Assim como todos os problemas, não esqueça de imprimir o fim de linha após o resultado, caso contrário, você receberá "Presentation Error". */

import 'dart:io';

void main() {
  // Define a lista de notas
  List<double> notas = [];

  // Define os pesos das notas
  double pesoA = 2;
  double pesoB = 3;
  double pesoC = 5;

  for (int i = 0; i < 3; i++) {
    // Lê a nota e a adiciona à lista
    notas.add(double.parse(stdin.readLineSync()!));
  }

  // Calcula a média ponderada
  final double media =
      (notas[0] * pesoA + notas[1] * pesoB + notas[2] * pesoC) /
          (pesoA + pesoB + pesoC);
  // Imprime a média com uma casa decimal
  print('MEDIA = ${media.toStringAsFixed(1)}');
}
