cd /workdir
pdflatex -interaction=batchmode -draftmode %1
bibtex -terse %1
makeglossaries --batch %1
pdflatex -interaction=batchmode -draftmode %1
pdflatex -interaction=batchmode %1