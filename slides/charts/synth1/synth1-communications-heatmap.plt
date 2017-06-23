reset
$map1 << EOD
0 500 500 500 0 0 500 0 0 500 0 0 500 500 500 500 0 0 0 0 0 0 0 0
500 0 500 500 0 0 500 0 0 500 0 0 500 500 500 500 0 0 0 0 0 0 0 0
500 500 0 500 0 0 500 0 0 500 0 0 500 500 500 500 0 0 0 0 0 0 0 0
500 500 500 0 0 0 500 0 0 500 0 0 500 500 500 500 0 0 0 0 0 0 0 0
0 0 0 0 0 350 0 0 0 0 350 350 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 350 0 0 0 0 0 350 350 0 0 0 0 0 0 0 0 0 0 0 0
500 500 500 500 0 0 0 0 0 500 0 0 500 500 500 500 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 700 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 700 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
500 500 500 500 0 0 500 0 0 0 0 0 500 500 500 500 0 0 0 0 0 0 0 0
0 0 0 0 350 350 0 0 0 0 0 350 0 0 0 0 0 0 0 0 0 0 0 0
0 0 0 0 350 350 0 0 0 0 350 0 0 0 0 0 0 0 0 0 0 0 0 0
500 500 500 500 0 0 500 0 0 500 0 0 0 500 500 500 0 0 0 0 0 0 0 0
500 500 500 500 0 0 500 0 0 500 0 0 500 0 500 500 0 0 0 0 0 0 0 0
500 500 500 500 0 0 500 0 0 500 0 0 500 500 0 500 0 0 0 0 0 0 0 0
500 500 500 500 0 0 500 0 0 500 0 0 500 500 500 0 0 0 0 0 0 0 0 0
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 200 200 200 200 200 200 200
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 200 0 200 200 200 200 200 200
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 200 200 0 200 200 200 200 200
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 200 200 200 0 200 200 200 200
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 200 200 200 200 0 200 200 200
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 200 200 200 200 200 0 200 200
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 200 200 200 200 200 200 0 200
0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 200 200 200 200 200 200 200 0
EOD

unset key
set view map scale 1
set style data lines
set xtics border in scale 0,0 mirror norotate  autojustify
set ytics border in scale 0,0 mirror norotate  autojustify
set ztics border in scale 0,0 nomirror norotate  autojustify
set nocbtics
set rtics axis in scale 0,0 nomirror norotate  autojustify
set cblabel "Communication Amount"
set label font ", 30"

set palette color
set pm3d map
set palette model RGB
set palette negative functions gray, gray, gray
set xtics 0.5,1
set x2tics 0,2
set ytics 0.5,1
set y2tics 0,2
set grid front linetype -1
set format x ""
set format y ""

x = 0.0

set xlabel "Source IP" font ", 30"
#set x2label "Source IP"
set ylabel "Destination IP" font ", 30"
#set title "NASA NAS 13x13 NoC COMMUNICATION MAP" 
set xrange [ -0.500000 : 23.50000 ] noreverse nowriteback
set x2range [ -0.500000 : 23.50000 ] noreverse nowriteback
set yrange [ 23.50000 : -0.500000 ] noreverse nowriteback
set y2range [ 23.50000 : -0.500000 ] noreverse nowriteback
set cbrange [ 0.00000 : 1500.0000 ] noreverse nowriteback

set terminal postscript eps enhanced color font "Helvetica,16"
set output "synth1-communications-heatmap.eps"
plot $map1 matrix using 1:2:3 with image#,      $map1 matrix using 1:2:(sprintf("%g",$3)) with labels
