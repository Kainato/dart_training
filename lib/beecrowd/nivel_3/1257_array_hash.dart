/* Array Hash

Você terá como uma entrada várias linhas, cada uma com uma string. O valor de cada caracter é computado como segue:

Valor = (Posição no alfabeto) + (Elemento de entrada) + (Posição do elemento)

Todas posições são baseadas em zero. 'A' tem posição 0 no alfabeto, 'B' tem posição 1 no alfabeto, ... O cálculo de hash retornado é a soma de todos os caracteres da entrada. Por exemplo, se a entrada for:
CBA
DDD

então cada caractere deverá ser computado como segue:

2 = 2 + 0 + 0 : 'C' no elemento 0 posição 0
2 = 1 + 0 + 1 : 'B' no elemento 0 posição 1
2 = 0 + 0 + 2 : 'A' no elemento 0 posição 2
4 = 3 + 1 + 0 : 'D' no elemento 1 posição 0
5 = 3 + 1 + 1 : 'D' no elemento 1 posição 1
6 = 3 + 1 + 2 : 'D' no elemento 1 posição 2

O cálculo final de hash será 2+2+2+4+5+6 = 21.

Entrada
A entrada contém vários casos de teste. A primeira linha de entrada contém um inteiro N que indica a quantidade de casos de teste. Cada caso de teste inicia com um inteiro L (1 ≤ L ≤ 100) que indica a quantidade de linhas que vem a seguir. Cada uma destas L linhas contém uma string com até 50 letras maiúsculas ('A' - 'Z').

Saída
Para cada caso de teste imprima o valor de hash que é calculado conforme o exemplo apresentado acima.
*/

import 'dart:io';
import 'dart:convert';

void main() async {
  // Lê toda a entrada do Beecrowd de uma vez em memória
  List<String> linhas = await stdin
      .transform(utf8.decoder)
      .transform(const LineSplitter())
      .toList();

  if (linhas.isEmpty) return;

  int ponteiro = 0;

  // Função para pegar a próxima linha válida ignorando linhas vazias
  String proximaLinha() {
    while (ponteiro < linhas.length && linhas[ponteiro].trim().isEmpty) {
      ponteiro++;
    }
    if (ponteiro >= linhas.length) return '';
    return linhas[ponteiro++].trim();
  }

  String entradaCasos = proximaLinha();
  if (entradaCasos.isEmpty) return;

  int casosTeste = int.parse(entradaCasos);

  for (int i = 0; i < casosTeste; i++) {
    String entradaL = proximaLinha();
    if (entradaL.isEmpty) break;

    int l = int.parse(entradaL);
    int hash = 0;

    for (int ii = 0; ii < l; ii++) {
      String texto = proximaLinha();

      for (int j = 0; j < texto.length; j++) {
        int posAlfabeto =
            texto.codeUnitAt(j) - 65; // 65 é o código ASCII de 'A'
        hash += posAlfabeto + ii + j;
      }
    }

    print(hash);
  }
}

/* Código original, mas com erro "Time Limit Exceeded"

import 'dart:io';

void main() {
  // Lê a quantidade de casos de teste
  final int casosTeste = int.tryParse(stdin.readLineSync()!) ?? 0;

  // Inicia o processamento de cada casos de teste
  for (int i = 0; i < casosTeste; i++) {
    // Cada caso de teste inicia com um inteiro L (1 ≤ L ≤ 100) que indica a quantidade de linhas que vem a seguir
    final int l = int.tryParse(stdin.readLineSync()!) ?? 0;

    // Inicializa o hash para o caso de teste atual
    // Hash é a soma de todos os valores calculados para cada caractere das linhas do caso de teste atual
    int hash = 0;

    // Inicia o processamento de cada linha
    for (int ii = 0; ii < l; ii++) {
      // Lê o input dado pelo texto enviado
      final String saidaLinha = stdin.readLineSync() ?? '';

      // Inicia o processamento de cada caractere da linha atual
      for (int j = 0; j < saidaLinha.length; j++) {
        final int posAlfabeto = saidaLinha.codeUnitAt(j) - 'A'.codeUnitAt(0);
        hash += posAlfabeto + ii + j;
      }
    }
    print(hash);
  }
}
*/
