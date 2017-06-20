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
set yrange[0:110]
#set offsets -0.5,-0.5,0,0

set style data histogram
set style histogram cluster gap 1
set style fill solid border -1
set boxwidth 0.9

set style line 1 lc rgbcolor '0x719386'
set style line 2 lc rgbcolor '0xe07a5f'
set style line 3 lc rgbcolor '0xccb7ae'
set style line 4 lc rgbcolor '0x60BD68'
set style line 5 lc rgbcolor '0xB2912F'
set style line 6 lc rgbcolor '0xB276B2'

input_files = 'pergunta1.txt'

output_files = 'pergunta1.pdf'

#apps = "CG EP FT IS LU MG"
usuario = '"Avaliadores com deficiência visual" "Avaliadores sem deficiência visual"'

set xlabel 'Tarefas'
set ylabel 'Porcentagem (%)'
set terminal pdfcairo enhanced color size 10,6 font ',24'
#set xtics rotate by 0 right font ',46' center
#set ytics font ',50'

set output output_files
plot for [j=2:3] input_files using j:xticlabels(1) title word(usuario,j-1) ls j-1