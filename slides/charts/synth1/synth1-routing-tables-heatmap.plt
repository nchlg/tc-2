reset
$map1 << EOD
5.46 6.67 6.67 8.13 6.29 3.13 
6.50 6.37 6.50 13.58 8.67 5.08 
7.50 9.29 9.13 10.29 8.04 5.29 
3.50 5.04 5.04 5.04 5.46 3.33
EOD

$map2 << EOD
5.46 6.67 6.67 8.13 6.29 3.13 
6.50 6.37 6.50 13.58 8.67 5.08 
7.50 9.29 9.13 10.29 8.04 5.29 
3.50 5.04 5.04 5.04 5.46 3.33
EOD

$map3 << EOD
7 7 6 8 6 3 
7 6 6 12 9 4 
7 9 9 9 7 5 
3 5 5 5 5 4
EOD

$map4 << EOD
5 7 6 6 5 4 
7 6 7 12 7 5 
6 9 10 11 9 4 
3 5 5 5 7 3
EOD

$map5 << EOD
3.17 5.13 5.21 5.21 5.42 3.13
4.62 7.38 7.50 7.13 7.50 5.08
4.96 7.25 7.25 6.88 7.04 5.25
3.50 5.04 5.04 5.04 5.08 3.29
EOD

$map6 << EOD
3 5 5 5 5 4
5 7 7 7 7 5
5 7 7 7 7 5
3 5 5 5 5 4
EOD

unset key
set view map scale 1
set style data lines
#set xtics border in scale 0,0 mirror norotate  autojustify
set xtics format ""
set x2tics border in scale 0,0 mirror norotate  autojustify
set ytics border in scale 0,0 mirror norotate  autojustify
set ztics border in scale 0,0 nomirror norotate  autojustify
set cbtics
set rtics axis in scale 0,0 nomirror norotate  autojustify
set cblabel "Routing Entries"
set cblabel font ", 30"

#set palette rgbformulae -7, 2, -7
set palette color
set pm3d map
set palette model RGB
set palette negative functions gray**0.2, gray, gray
set xtics 0,1
set ytics 0,1
#set tics font ", 30"

x = 0.0

#set title "Heat map with non-zero pixel values written as labels" 
set xrange [ -0.500000 : 5.50000 ] noreverse nowriteback
set x2range [ -0.500000 : 5.50000 ] noreverse nowriteback
set yrange [ 3.50000 : -0.500000 ] noreverse nowriteback
set cbrange [ 0.00000 : 17.00000 ] noreverse nowriteback

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth1-routing-tables-heatmap-sla-off-average.eps"
plot $map1 matrix using 1:2:3 with image,      $map1 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth1-routing-tables-heatmap-sla-on-average.eps"
plot $map2 matrix using 1:2:3 with image,      $map2 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth1-routing-tables-heatmap-sla-off-optimal.eps"
plot $map3 matrix using 1:2:3 with image,      $map3 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth1-routing-tables-heatmap-sla-on-optimal.eps"
plot $map4 matrix using 1:2:3 with image,      $map4 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth1-routing-tables-heatmap-basenoc-average.eps"
plot $map5 matrix using 1:2:3 with image,      $map5 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth1-routing-tables-heatmap-basenoc-optimal.eps"
plot $map6 matrix using 1:2:3 with image,      $map6 matrix using 1:2:(sprintf("%g",$3)) with labels