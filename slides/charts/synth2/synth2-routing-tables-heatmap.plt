reset
$map1 << EOD
3.20 8.05 7.42 7.98 7.88 8.20 6.77 6.52 6.83 5.32 
5.85 9.52 8.50 9.50 11.43 10.03 8.55 8.15 6.98 6.25 
6.77 9.67 8.90 9.22 10.48 10.25 9.37 9.02 8.63 7.30 
5.08 7.17 7.22 8.85 8.30 9.15 8.20 9.10 8.37 5.08 
4.83 7.08 7.12 8.22 9.37 9.18 8.95 9.10 9.12 5.53 
3.47 5.05 5.08 5.48 5.62 5.25 5.27 5.32 5.32 3.78
EOD

$map2 << EOD
3.20 8.05 7.42 7.98 7.88 8.20 6.77 6.52 6.83 5.32 
5.85 9.52 8.50 9.50 11.43 10.03 8.55 8.15 6.98 6.25 
6.77 9.67 8.90 9.22 10.48 10.25 9.37 9.02 8.63 7.30 
5.08 7.17 7.22 8.85 8.30 9.15 8.20 9.10 8.37 5.08 
4.83 7.08 7.12 8.22 9.37 9.18 8.95 9.10 9.12 5.53 
3.47 5.05 5.08 5.48 5.62 5.25 5.27 5.32 5.32 3.78
EOD

$map3 << EOD
3 5 5 5 4 6 6 6 6 5 
5 8 9 8 11 8 6 6 5 6 
6 9 9 9 10 10 9 10 9 8 
4 7 7 9 7 9 7 9 7 6 
5 7 7 9 9 10 7 10 8 5 
4 5 5 5 5 5 5 5 5 3
EOD

$map4 << EOD
3 5 5 5 4 6 6 6 6 5 
5 8 9 8 11 8 6 6 5 6 
6 9 9 9 10 10 9 10 9 8 
4 7 7 9 7 9 7 9 7 6 
5 7 7 9 9 10 7 10 7 5 
4 5 5 5 5 5 5 5 5 3
EOD

$map5 << EOD
3.20 5.07 5.12 5.12 5.12 5.12 5.18 5.12 5.17 3.15
4.92 7.47 7.53 7.53 7.60 7.60 7.63 7.43 7.58 5.30
5.42 7.48 7.45 7.42 7.45 7.45 7.38 7.30 7.42 5.53
5.07 7.15 7.13 7.13 7.10 7.13 7.15 7.10 7.12 4.93
4.85 7.10 7.13 7.15 7.17 7.17 7.18 7.12 7.15 5.03
3.48 5.05 5.07 5.08 5.10 5.12 5.13 5.12 5.12 3.50
EOD

$map6 << EOD
3 5 5 5 5 5 5 5 5 4
5 7 7 7 7 7 7 7 7 5
5 7 7 7 7 7 7 7 7 5
5 7 7 7 7 7 7 7 7 5
5 7 7 7 7 7 7 7 7 5
3 5 5 5 5 5 5 5 5 4
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

x = 0.0

#set title "Heat map with non-zero pixel values written as labels" 
set xrange [ -0.500000 : 9.50000 ] noreverse nowriteback
set x2range [ -0.500000 : 9.50000 ] noreverse nowriteback
set yrange [ 5.50000 : -0.500000 ] noreverse nowriteback
set cbrange [ 0.00000 : 17.00000 ] noreverse nowriteback

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth2-routing-tables-heatmap-sla-off-average.eps"
plot $map1 matrix using 1:2:3 with image,      $map1 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth2-routing-tables-heatmap-sla-on-average.eps"
plot $map2 matrix using 1:2:3 with image,      $map2 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth2-routing-tables-heatmap-sla-off-optimal.eps"
plot $map3 matrix using 1:2:3 with image,      $map3 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth2-routing-tables-heatmap-sla-on-optimal.eps"
plot $map4 matrix using 1:2:3 with image,      $map4 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth2-routing-tables-heatmap-basenoc-average.eps"
plot $map5 matrix using 1:2:3 with image,      $map5 matrix using 1:2:(sprintf("%g",$3)) with labels

set terminal postscript eps enhanced color font "Helvetica,20"
set output "synth2-routing-tables-heatmap-basenoc-optimal.eps"
plot $map6 matrix using 1:2:3 with image,      $map6 matrix using 1:2:(sprintf("%g",$3)) with labels