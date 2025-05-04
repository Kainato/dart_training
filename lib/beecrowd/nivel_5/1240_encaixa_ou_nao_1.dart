/* Encaixa ou Não I
Paulinho tem em suas mãos um pequeno problema. A professora lhe pediu que ele construísse um programa para verificar, à partir de dois valores inteiros A e B, se B corresponde aos últimos dígitos de A.

Entrada
A entrada consiste de vários casos de teste. A primeira linha de entrada contém um inteiro N que indica a quantidade de casos de teste. Cada caso de teste consiste de dois inteiros A (1 ≤ A < 231 ) e B (1 ≤ B < 231) positivos.

Saída
Para cada caso de entrada imprima uma mensagem indicando se o segundo valor encaixa no primeiro valor
*/

import 'dart:io';

void main() {
  // Lê o número de casos de teste
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < n; i++) {
    // Lê os valores A e B como strings
    List<String> valores = stdin.readLineSync()!.split(' ');
    String a = valores[0];
    String b = valores[1];

    // Verifica se B encaixa em A
    if (a.endsWith(b)) {
      stdout.writeln('encaixa');
    } else {
      stdout.writeln('nao encaixa');
    }
  }
}
