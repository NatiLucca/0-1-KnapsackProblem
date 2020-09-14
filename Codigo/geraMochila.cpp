#include <cstdlib>
#include <iostream>
#include <fstream>
#include <string.h>
#include <random>
#include <stdlib.h>
//g++ mochila.cpp -o mochila
// ./mochila teste.txt 300 25 900 50

/* Estrutura do Arquivo
m
n
As n linhas seguintes contém dois números: o primeiro é o valor do item e o segundo, seu peso.
Saída: o valor máximo da mochila
*/
using namespace std;

int main(int argc, char **argv){

	if(argc < 6){
		cout << "Informe: " << argv[0] << " <nome.txt> <Tam mochila> <Num itens> <maxValor> <maxPeso>" << endl;
    cout << "nome.txt - nome do arquivo a ser salvo" << endl;
    cout << "Tam mochila - tamanho máximo da mochila" << endl;
    cout << "Num itens - número de itens" << endl;
    cout << "maxValor - valor máximo da distribuição" << endl;
      cout << "maxPeso - peso máximo da distribuição " << endl;
		return 0;
	}

  string nome = argv[1]; // nome do arquivo
  int m = atoi(argv[2]) ; // m é o tamanho da mochila.
  int n = atoi(argv[3]); // n o número de itens.
  int maxValor = atoi(argv[4]);
  int maxPeso = atoi(argv[5]);
  random_device rd;
  mt19937 gen(rd());
  uniform_int_distribution<> disValor(50, maxValor);
  uniform_int_distribution<> disPeso(5, maxPeso);

	ofstream arq(nome);

	if (!arq){
        	cout << "Erro com Arquivo" << endl;
        	return 0;
  }

// Cabeçalho do arquivo
	arq << m << "  " << n << endl;

// valor[n] peso[n]
  for(int i=0; i<n; i++){
      arq << disValor(gen) << "  " << disPeso(gen) << endl;
  }

}
