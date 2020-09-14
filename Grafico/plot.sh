# Bash
# Plot GRafico em PDF

if [ $# -ne 3 ]
then
	echo "Parametros: Título Arquivo Saída"
	echo "Exemplo ./plot.sh alpine/booth alpine.txt alpine.png"
  echo "./plot.sh Alpine alpine.txt alpine.png"
	exit
fi


echo "reset" > temp
      #PNG
echo "set terminal png size 800,500 enhanced font 'Latin Modern,15' " >> temp
echo "set output '$3' " >> temp

echo "set title '$1 ' " >> temp
echo "set key left top" >> temp
echo "set xlabel 'Mochilas' " >> temp
echo "set ylabel 'Tempo em Segundos' " >> temp

echo "set style line 2 lc rgb 'black' lt 4 lw 2" >> temp
echo "set style line 3 lc rgb 'red' lt 2 lw 2" >> temp
echo "set xtics format '' " >> temp
echo "set grid ytics" >> temp

echo "plot '$2' using 2:xtic(1) with linespoints title 'Vetor' ls 2, \
            '' using 3 with linespoints title 'Matriz' ls 3 "  >> temp

#    '' using 0:2:2 with labels center boxed notitle, \
#	    '' using 0:3:3 with labels center offset 0,1 notitle 
# Legenda de Dados
echo "unset output" >> temp
##'' using 0:2:2 with labels center boxed notitle, \
gnuplot temp

rm temp
