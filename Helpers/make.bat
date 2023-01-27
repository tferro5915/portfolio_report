cd /workdir
pdflatex -no-shell-escape -interaction=batchmode -draftmode %1
bibtex -terse %1
makeglossaries --batch %1
pdflatex -no-shell-escape -interaction=batchmode -draftmode %1
bibtex -terse %1
makeglossaries --batch %1
pdflatex -no-shell-escape -interaction=batchmode -draftmode %1
pdflatex -no-shell-escape -interaction=batchmode %1