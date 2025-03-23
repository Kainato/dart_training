/* Quadrado e ao Cubo
Escreva um programa que leia um valor inteiro N (1 < N < 1000). Este N é a quantidade de linhas de saída que serão apresentadas na execução do programa.

Entrada
O arquivo de entrada contém um número inteiro positivo N.

Saída
Imprima a saída conforme o exemplo fornecido.
*/

import 'dart:io';

void main() {
  // Entrada de dados
  int n = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= n; i++) {
    // Processamento e cálculo do resultado
    int quadrado = i * i;
    int cubo = i * i * i;

    // Saída de dados
    print('$i $quadrado $cubo');
  }
}
