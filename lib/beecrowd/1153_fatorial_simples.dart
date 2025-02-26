/* Fatorial Simples

Ler um valor N. Calcular e escrever seu respectivo fatorial. Fatorial de N = N * (N-1) * (N-2) * (N-3) * ... * 1.

Entrada
A entrada contém um valor inteiro N (0 < N < 13).

Saída
A saída contém um valor inteiro, correspondente ao fatorial de N.
*/

import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  int resultadoFatorial = 1;

  for (int i = 1; i <= n; i++) {
    resultadoFatorial *= i;
  }

  print(resultadoFatorial);
}