/* Cálculo Simples

Neste problema, deve-se ler o código de uma peça 1, o número de peças 1, o valor unitário de cada peça 1, o código de uma peça 2, o número de peças 2 e o valor unitário de cada peça 2. Após, calcule e mostre o valor a ser pago.

Entrada
O arquivo de entrada contém duas linhas de dados. Em cada linha haverá 3 valores, respectivamente dois inteiros e um valor com 2 casas decimais.

Saída
A saída deverá ser uma mensagem conforme o exemplo fornecido abaixo, lembrando de deixar um espaço após os dois pontos e um espaço após o "R$". O valor deverá ser apresentado com 2 casas após o ponto.
*/

import 'dart:io';

void main() {
  List<String> line1 = stdin.readLineSync()!.split(' ');
  List<String> line2 = stdin.readLineSync()!.split(' ');

  // int code1 = int.parse(line1[0]);
  int qtd1 = int.parse(line1[1]);
  double valor1 = double.parse(line1[2]);

  // int code2 = int.parse(line2[0]);
  int qtd2 = int.parse(line2[1]);
  double valor2 = double.parse(line2[2]);

  double total = (qtd1 * valor1) + (qtd2 * valor2);

  print('VALOR A PAGAR: R\$ ${total.toStringAsFixed(2)}');
}