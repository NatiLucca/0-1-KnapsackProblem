#!/bin/bash

if [ ! -d "Resultados" ]; then
	mkdir Resultados
else
	rm Resultados/*.txt
fi

g++ -std=c++11 -o mochilaVetor mochilaVet.cpp

g++ -std=c++11 -o mochilaMatriz mochilaMatriz.cpp

#var="valorMaximo ; tempoExecucao; mochilaMax; numItens"

./mochilaVetor Mochilas/mochila0.txt  >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila1.txt >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila2.txt >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila3.txt >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila4.txt >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila5.txt  >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila6.txt >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila7.txt >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila8.txt >> Resultados/vetor.txt
./mochilaVetor Mochilas/mochila9.txt >> Resultados/vetor.txt


./mochilaMatriz Mochilas/mochila0.txt  >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila1.txt >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila2.txt >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila3.txt >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila4.txt >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila5.txt  >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila6.txt >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila7.txt >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila8.txt >> Resultados/matriz.txt
./mochilaMatriz Mochilas/mochila9.txt >> Resultados/matriz.txt

exit
