# 0x4D4D4D (gray)
# 0x5DA5DA (blue)
# 0xFAA43A (orange)
# 0x60BD68 (green)
# 0xF17CB0 (pink)
# 0xB2912F (brown)
# 0xB276B2 (purple)
# 0xDECF3F (yellow)
# 0xF15854 (red)

reset
set key outside center top
#unset key
set grid
set auto x
#set auto y
#set xrange[-0.5:6.]
set yrange[0:6]
#set offsets -0.5,-0.5,0,0

# set style data histogram
# set style histogram cluster gap 1
set style fill solid 1.0 border -1
set boxwidth 0.5

#set style line 0 lc rgbcolor '0x5DA5DA'
set style line 1 lc rgbcolor '0xFAA43A'
set style line 2 lc rgbcolor '0x60BD68'
set style line 3 lc rgbcolor '0xFAA43A'
set style line 4 lc rgbcolor '0x60BD68'
set style line 5 lc rgbcolor '0xB2912F'
set style line 6 lc rgbcolor '0xB276B2'

input_files = 'questionario.txt'

output_files = 'qt1.pdf qt2.pdf qt3.pdf qt4.pdf qt5.pdf qt6.pdf qt7.pdf qt8.pdf qt9.pdf qt10.pdf qt11.pdf'

#apps = "CG EP FT IS LU MG"
usuario = '"Com deficiência visual" "Sem deficiência visual"'

set xlabel 'Avaliador'
set ylabel 'Média da Avaliação'
set terminal pdfcairo enhanced color size 10,6 font ',24'
#set xtics rotate by 0 right font ',46' center
#set ytics font ',50'

do for [i=2:12]{
	set output word(output_files,i-1)
	plot input_files using ($0):i:($0):xticlabels(1) with boxes lc variable notitle
}