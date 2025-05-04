/* Triângulo
Leia 3 valores reais (A, B e C) e verifique se eles formam ou não um triângulo. Em caso positivo, calcule o perímetro do triângulo e apresente a mensagem:

Perimetro = XX.X

Em caso negativo, calcule a área do trapézio que tem A e B como base e C como altura, mostrando a mensagem

Area = XX.X

Entrada
A entrada contém três valores reais.

Saída
O resultado deve ser apresentado com uma casa decimal. */

import 'dart:io';

void main() {
  // Lê os valores que formarão a figura geométrica
  // A entrada contém três valores reais.
  List<double> lados =
      stdin.readLineSync()!.split(' ').map(double.parse).toList();

  // Ordena os lados em ordem decrescente
  lados.sort((a, b) => b.compareTo(a));

  // Verifica se os lados formam um triângulo
  // A condição para formar um triângulo é que a soma de dois lados
  // seja maior que o terceiro, onde:
  // - lados[0] é o maior lado
  // - lados[1] é o segundo maior lado
  // - lados[2] é o menor lado
  if (lados[0] < lados[1] + lados[2]) {
    // Calcula o perímetro do triângulo
    double perimetro = lados[0] + lados[1] + lados[2];
    print('Perimetro = ${perimetro.toStringAsFixed(1)}');
  } else {
    // Calcula a área do trapézio
    double area = ((lados[0] + lados[1]) * lados[2]) / 2;
    print('Area = ${area.toStringAsFixed(1)}');
  }
}
