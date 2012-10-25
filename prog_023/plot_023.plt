# File: 			plot_023
# Author:			Ervin Mazlagic
# Source origin:		Page 17, ISBN:978-3-8348-0603-1

reset
set grid
set style line 1 lt -1
set size square
unset key

x_min =	0
x_max = 30
y_min = 4000
y_max = 20000
set xrange [x_min:x_max]
set yrange [y_min:y_max]
set y2range [-600:1000]
set xtics
set ytics 2000
set y2tics 200

set xlabel 'Zeit t in Minuten'
set ylabel 'stock V(t) in Liter'
set y2label 'flow f(t) in Liter/min'
set title 'Quadratische V(t)-Kurven: Konstruiere die flow-Funktionen'

set arrow nohead	from	0.0,	10000.0 to	5.0, 	8750.0	lt	1
set arrow nohead 	from	5.0,	8750.0	to	10.0,	10000.0	lt	1
set arrow head 		from	7.5,	9375.0	to	7.5,	12500.0	lt	1
set arrow head 		from	7.5,	12500.0	to	30.0,	12500.0 ls	0
set arrow head 		from	2.5,	9375.0	to	2.5,	7500.0	lt	1
set arrow head 		from	2.5,	7500.0	to	30.0,	7500.0	ls	0
set arrow nohead 	from	15.0,	13750.0	to	25.0,	11750.0	lt	1
set arrow head 		from	20.0,	12750.0	to	20.0,	8000.0	lt	1
set arrow head 		from	20.0,	8000.0	to	30.0,	8000.0	ls	0
set arrow nohead 	from	15.0,	10000.0	to	30.0,	4000.0
set arrow nohead 	from	0.0,	5000.0	to	15.0,	20000.0
set label 'f(20)=-200' 	at 	21.0, 	8200.0
set label 'f(7.5)=+250' at 	9.0, 	12700.0
set label 'f(2.5)=-250' at 	4.0, 	7700.0
# set label 'V(5)=8750' 	at 	5.0, 	8000.0
# set label 'V(15)=13750' at 	15.0, 	16000.0
# set label 'V(20)=13250' at 	17.5, 	15000.0
# set label 'V(25)=11750' at 	22.5, 	14000.0

plot x<15 ? 50*x**2 - 500*x + 10000 : -20*x**2 + 600*x + 9250 lw 1 lt 1

set terminal postscript enhanced colour
set output 'daten/stock_flow_6_3.eps'
replot
set output
set terminal x11
