# 0x4D4D4D (gray)
# 0x5DA5DA (blue)
# 0xFAA43A (orange)
# 0x60BD68 (green)
# 0xF17CB0 (pink)
# 0xB2912F (brown)
# 0xB276B2 (purple)
# 0xDECF3F (yellow)
# 0xF15854 (red)
# 0x719386 (verde-cinza)
# 0xe07a5f (telha-cinza)
# 0xe56439 (telha)
# 0xccb7ae (rosa-cinza)

reset
#set key outside center top
unset key
set grid
#set auto x
#set auto y
set xrange[-0.5:6.0]
set yrange[0:6]
#set offsets -0.5,-0.5,0,0

set style data histogram
set style histogram cluster gap 1
set style fill solid 1.0 border -1
set boxwidth 0.6

set style line 1 lc rgbcolor '0x719386'
set style line 2 lc rgbcolor '0xe07a5f'

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
	plot input_files using i:xticlabels(1) ls 2
}