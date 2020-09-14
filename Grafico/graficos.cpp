#include <cstdlib>
#include <iostream>
#include <vector>
#include <fstream>
#include <string.h>

using namespace std;

bool solucaoIgual(vector<int>  solVetor, vector<int> solMatriz){

				for(int j=0; j<solMatriz.size() ; j++){
							if(solVetor[j] != solMatriz[j]){
									return false;
							}
				}
				return true;
}

void tempoMedio(vector<double>  solVetor, vector<double> solMatriz, int mochilas){
			vector<double> mediaVetor;
			vector<double> mediaMatriz;
			int k=0;
			for(int j = 0; j < mochilas; j++){
						mediaVetor.push_back(0);
						mediaMatriz.push_back(0);
			}

				for(int i = 0; i < mochilas; i++){
							k = i;
							for(int j = 0; j < 10; j++){
											mediaVetor[i] += solVetor[k];
											mediaMatriz[i] += solMatriz[k];
										 k += mochilas;
							}
					}

				for(int i=0; i<mochilas; i++){
					cout << i << "  " <<  (mediaVetor[i]/mochilas) << "  " << (mediaMatriz[i]/mochilas) << endl;
				}
}

int main(int argc, char **argv){

			vector<int> solucaoVetor;
			vector<int> solucaoMatriz;
			vector<double> tempoVetor;
			vector<double> tempoMatriz;
			int solucao=0, info=0;
			double  tempo=0.0;
			string text;
			int mochilas = 17; // slot de mochilas
			ifstream arqVetor("../Resultados/vetor.txt");
			ifstream arqMatriz("../Resultados/matriz.txt");

			if (!arqVetor || !arqMatriz){
        	cout << "Erro na leitura do arquivo" << endl;
        	return 0;
    	}

			for(int j=0; j<10; j++){
						for(int i=0; i<mochilas; i++){
											arqVetor >> solucao;
											solucaoVetor.push_back(solucao);
											arqVetor >> tempo;
											tempoVetor.push_back(tempo);
											arqVetor >> info;
											arqVetor >> info;

											arqMatriz >> solucao;
											solucaoMatriz.push_back(solucao);
											arqMatriz >> tempo;
											tempoMatriz.push_back(tempo);
											arqMatriz >> info;
											arqMatriz >> info;
						}
		}

		arqVetor.close();
		arqMatriz.close();

			 if (solucaoIgual(solucaoVetor, solucaoMatriz)){
				 				tempoMedio(tempoVetor, tempoMatriz, mochilas);
			}else{
						cout << "As soluções não correspondem! " << endl;
			}

}
