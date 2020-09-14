
#!/bin/bash

if [ ! -d "Resultados" ]; then
	mkdir Resultados
else
	rm Resultados/*.txt
fi

g++ -std=c++11 -o mochilaVetor Codigo/mochilaVet.cpp

g++ -std=c++11 -o mochilaMatriz Codigo/mochilaMatriz.cpp

#var="valorMaximo ; tempoExecucao; mochilaMax; numItens"

for i in $(seq 1 11);
do
	./mochilaVetor Mochilas/mochila0.txt  >> Resultados/vetor.txt
	./mochilaVetor Mochilas/mochila1.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila2.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila3.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila4.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila5.txt  >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila6.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila7.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila8.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila9.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila10.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila11.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila12.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila13.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila14.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila15.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila16.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila17.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila18.txt >> Resultados/vetor.txt
	# ./mochilaVetor Mochilas/mochila19.txt >> Resultados/vetor.txt


done

for i in $(seq 1 11);
do
	./mochilaMatriz Mochilas/mochila0.txt  >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila1.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila2.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila3.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila4.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila5.txt  >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila6.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila7.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila8.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila9.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila10.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila11.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila12.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila13.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila14.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila15.txt >> Resultados/matriz.txt
	#./mochilaMatriz Mochilas/mochila16.txt >> Resultados/matriz.txt
	# ./mochilaMatriz Mochilas/mochila17.txt >> Resultados/matriz.txt
	# ./mochilaMatriz Mochilas/mochila18.txt >> Resultados/matriz.txt
	# ./mochilaMatriz Mochilas/mochila19.txt >> Resultados/matriz.txt
done


rm -r mochilaMatriz
rm -r mochilaVetor

exit
