#include <cstdlib>
#include <iostream>
#include <vector>
#include <fstream>
#include <string.h>
#include <time.h>

using namespace std;

int mochila(int n, vector<int> p, vector<int> v, int Max){

	int a=0, b=0, saida=0;
	int **matriz  = new int *[Max];
  for(int k = 0; k < (n+1); k++){
      matriz[k] = new int[Max];
			for(int l=0; l<(Max); l++){
				matriz[k][l] = 0;
			}
	}

	for(int x=1; x<=Max; x++){
				for(int i=1; i<=n; i++){
							a = matriz[i-1][x];
							if((x - p[i]) >= 0){
												b = v[i] + matriz[i-1][x - p[i]];
												if(a < b){
														a = b;
												}
							}
							matriz[i][x] = a;
				}//end for i
	}//end for x
 saida = matriz[n][Max];
	// Desalocar Matriz
	for(int k = 0; k < Max; k++)
      delete[] matriz[k];

   delete[] matriz;
	return saida;
}

int main(int argc, char **argv){

			if(argc < 2){
					cout << "Informe: " << argv[0] << " <nome.txt> " << endl;
					return 0;
			}
			clock_t start_t, end_t;
			double total_t;
			start_t = clock();
			vector<int> v; // vetor de valores
			vector<int> p; // vetor de pesos
			int Max=0, n=0, valor=0, peso=0;
			string nome = argv[1]; // nome do arquivo de leitura da mochila

			ifstream arq(nome);
			if (!arq){
        	cout << "Erro na leitura do arquivo" << endl;
        	return 0;
    	}

			arq >> Max; // capacidade da mochila
			arq >> n; // numero de itens

			// Item 0 - valor = peso = 0
			v.push_back(0);
			p.push_back(0);
			for(int i=1; i<=n; i++){
								arq >> valor;
								v.push_back(valor); // VETOR DE VALORES
								arq >> peso;
								p.push_back(peso);// VETOR DE PESOS
			}
			// Valor Máximo ; tempo de execução
			int saida = mochila(n, p, v, Max);
			end_t = clock();
		  total_t = (double)(end_t - start_t) / CLOCKS_PER_SEC;
			cout << saida << " " << total_t << " "<< Max << " "<< n << endl;
}
