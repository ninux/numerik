# File:			plot_01.gp
# Author:		Ervin Mazlagic
# Source origin:	Page 5, ISBN: 978-3-8348-0603-1

reset
set size square
unset key
set grid
set xrange [-2:2]
set yrange [0:4]
set xtics 1.0
set ytics 1.0
plot '/home/ninux/tutorials/numerik/prog_011/daten/dat.csv' title 'dat.csv' with points 0
