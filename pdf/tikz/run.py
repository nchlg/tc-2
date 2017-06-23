from subprocess import call

# Compila os .tex
call(['pdflatex', 'diagrama-classes.tex'])
call(['pdflatex', 'toptop-1.tex'])
call(['pdflatex', 'topdown-1.tex'])
call(['pdflatex', 'topdown-2.tex'])
call(['pdflatex', 'topdown-3.tex'])
call(['pdflatex', 'topdown-4.tex'])
call(['pdflatex', 'topdown-5.tex'])
call(['pdflatex', 'bottomup-1.tex'])
call(['pdflatex', 'bottomup-2.tex'])
call(['pdflatex', 'bottomup-3.tex'])
call(['pdflatex', 'bottomup-4.tex'])
call(['pdflatex', 'bottomup-5.tex'])

# Faz o crop dos pdfs de saida
call(['pdfcrop', 'diagrama-classes.pdf', 'diagrama-classes.pdf'])
call(['pdfcrop', 'toptop-1.pdf', 'toptop-1.pdf'])
call(['pdfcrop', 'topdown-1.pdf', 'topdown-1.pdf'])
call(['pdfcrop', 'topdown-2.pdf', 'topdown-2.pdf'])
call(['pdfcrop', 'topdown-3.pdf', 'topdown-3.pdf'])
call(['pdfcrop', 'topdown-4.pdf', 'topdown-4.pdf'])
call(['pdfcrop', 'topdown-5.pdf', 'topdown-5.pdf'])
call(['pdfcrop', 'bottomup-1.pdf', 'bottomup-1.pdf'])
call(['pdfcrop', 'bottomup-2.pdf', 'bottomup-2.pdf'])
call(['pdfcrop', 'bottomup-3.pdf', 'bottomup-3.pdf'])
call(['pdfcrop', 'bottomup-4.pdf', 'bottomup-4.pdf'])
call(['pdfcrop', 'bottomup-5.pdf', 'bottomup-5.pdf'])

# Limpeza
call(['rm *.aux'], shell=True)
call(['rm *.log'], shell=True)
