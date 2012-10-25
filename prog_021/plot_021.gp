# File:			plot_021.gp
# Author:		Ervin Mazlagic
# Source origin:	Page 13, ISBN: 978-3-8348-0603-1

reset
set size square
unset key
set grid
set style line 1 lt 1 lw 2
x_min = -3.0
x_max = 12.0
y_min = -14.0
y_max = 4.0
set xrange [x_min:x_max]
set yrange [y_min:y_max]
set xtics 2.0
set ytics 2.0
set arrow nohead from -3, -1	to 0,-4		ls 1
set arrow nohead from 0, -4	to 4,1.5	ls 1
set arrow nohead from 4, 1.5	to 7, 1.5	ls 1
set arrow nohead from 9, 0	to 12, -2.5	ls 1
set xlabel 'x-Achse'
set ylabel 'y-Achse'
plot '/home/ninux/tutorials/numerik/prog_021/daten/dat.csv' title 'dat.csv' with points 4.0
replot x<=0 ? -0.5 * x**2-4*x-7.5 : x<4 ? 0.6875*x**2-4*x-7.5 : \
x < 7 ? 1.5*x-18.5:x<9 ? -8.0 : \
x > 9 ? -0.4165*x**2+7.5*x-41.75\
 : 0 ls 1
set terminal postscript enhanced colour
set output 'daten/grafik_021.eps'
replot
set output
set terminal x11
