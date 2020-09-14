#!/bin/bash

g++ -std=c++11 -o mochila geraMochila.cpp

 #<exec> <nome.txt> <Tam mochila> <Num itens> <maxValor> <maxPeso>

# mochila 0 - 1000 100
# mochila 1 - 10000 100

#./mochila Mochilas/mochila2.txt 100000 500 100000 10000

#./mochila Mochilas/mochila3.txt 200000 500 100000 10000

#./mochila Mochilas/mochila4.txt 300000 800 100000 10000

#./mochila Mochilas/mochila5.txt 400000 800 100000 10000

#./mochila Mochilas/mochila6.txt 500000 1000 100000 10000

#./mochila Mochilas/mochila7.txt 600000 1000 100000 10000

#./mochila Mochilas/mochila8.txt 700000 1200 100000 10000

#./mochila Mochilas/mochila9.txt 800000 1200 100000 10000

#./mochila Mochilas/mochila10.txt 900000 1500 100000 10000

#./mochila Mochilas/mochila11.txt 1000000 1500 100000 10000

#./mochila Mochilas/mochila14.txt 2000000 1500 100000 10000

#./mochila Mochilas/mochila15.txt 2000000 2000 100000 10000

#./mochila Mochilas/mochila16.txt 2500000 2500 100000 10000

# mochila 12 - 2000000 500
# mochila 13 - 2000000 500

./mochila Mochilas/mochila17.txt 3000000 3000 100000 10000

./mochila Mochilas/mochila18.txt 3500000 3500 100000 10000

./mochila Mochilas/mochila19.txt 5000000 5000 100000 10000



rm -r mochila

exit
