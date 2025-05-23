/* Imposto de renda
Em um país imaginário denominado Lisarb, todos os habitantes ficam felizes em pagar seus impostos, pois sabem que nele não existem políticos corruptos e os recursos arrecadados são utilizados em benefício da população, sem qualquer desvio. A moeda deste país é o Rombus, cujo símbolo é o R$.

Leia um valor com duas casas decimais, equivalente ao salário de uma pessoa de Lisarb. Em seguida, calcule e mostre o valor que esta pessoa deve pagar de Imposto de Renda, segundo a tabela abaixo.

"https://resources.beecrowd.com/gallery/images/problems/UOJ_1051_pt.png"

Lembre que, se o salário for R$ 3002.00, a taxa que incide é de 8% apenas sobre R$ 1000.00, pois a faixa de salário que fica de R$ 0.00 até R$ 2000.00 é isenta de Imposto de Renda. No exemplo fornecido (abaixo), a taxa é de 8% sobre R$ 1000.00 + 18% sobre R$ 2.00, o que resulta em R$ 80.36 no total. O valor deve ser impresso com duas casas decimais.

Entrada
A entrada contém apenas um valor de ponto flutuante, com duas casas decimais.

Saída
Imprima o texto "R$" seguido de um espaço e do valor total devido de Imposto de Renda, com duas casas após o ponto. Se o valor de entrada for menor ou igual a 2000, deverá ser impressa a mensagem "Isento". */

import 'dart:io';

void main() {
  // Lê o salário do usuário
  double salario = double.parse(stdin.readLineSync()!);

  // Inicializa o imposto a ser pago
  double imposto = 0.0;

  // Verifica as faixas de imposto e calcula o valor do imposto
  if (salario <= 2000) {
    imposto = 0;
  } else if (salario > 2000 && salario <= 3000) {
    // Calcula o imposto para a faixa de 2000 a 3000
    // O imposto é de 8% sobre o valor que excede 2000
    imposto = (salario - 2000) * 0.08;
  } else if (salario > 3000 && salario <= 4500) {
    // Calcula o imposto para a faixa de 3000 a 4500
    // O imposto é de 8% sobre os primeiros 1000 (de 2000 a 3000)
    imposto = (salario - 3000) * 0.18 + (1000 * 0.08);
  } else {
    // Calcula o imposto para salários acima de 4500
    // O imposto é de 8% sobre os primeiros 1000 (de 2000 a 3000)
    imposto = (salario - 4500) * 0.28 + (1500 * 0.18) + (1000 * 0.08);
  }

  // Verifica se o imposto é zero e imprime a mensagem correspondente
  if (imposto == 0) {
    print('Isento');
  } else {
    // Imprime o valor do imposto com duas casas decimais
    print('R\$ ${imposto.toStringAsFixed(2)}');
  }
}
