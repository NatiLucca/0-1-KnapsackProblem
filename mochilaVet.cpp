#include <cstdlib>
#include <iostream>
#include <vector>
#include <fstream>
#include <string.h>
#include <time.h>

using namespace std;

int mochila(int n, vector<int> p, vector<int> v, int Max){

	int a=0, b=0;
	int *resul, *aux, saida=0;
	resul = (int*) calloc(Max, sizeof(int));
	aux = (int*) calloc(Max, sizeof(int));

	for(int j=1; j<=n; j++){
				for(int i=1; i<=Max; i++){
					aux[i] = resul[i];
					a = aux[i];
					if((i - p[j-1]) >= 0){
										b = v[j-1] + aux[ i - (p[j-1])];
										if(a < b){
												a = b;
										}
										resul[i] = a;
					}else {
										resul[i] = aux[i];
					}
				}//end for i
	}//end for j
	saida = resul[Max];
	free(aux);
	free(resul);
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

			for(int i=0; i<n; i++){
								arq >> valor;
								v.push_back(valor); // VETOR DE VALORES
								arq >> peso;
								p.push_back(peso);// VETOR DE PESOS
			}

			int saida = mochila(n, p, v, Max);
			end_t = clock();
			total_t = (double)(end_t - start_t) / CLOCKS_PER_SEC;
			cout << saida << " " << total_t << " "<< Max << " "<< n << endl;
}
