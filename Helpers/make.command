#!/bin/bash

# Untested on Mac

OUTDIR="BUILD"

cd /workdir
mkdir -p $OUTDIR/Helpers

pdflatex -no-shell-escape -interaction=batchmode -draftmode --output-directory $OUTDIR $1
bibtex -terse $OUTDIR/$1
makeglossaries --batch -d $OUTDIR $1
makeindex $OUTDIR/$1.nlo -s nomencl.ist -o $OUTDIR/$1.nls
pdflatex -no-shell-escape -interaction=batchmode -draftmode --output-directory $OUTDIR $1
bibtex -terse $OUTDIR/$1
makeglossaries --batch -d $OUTDIR $1
makeindex $OUTDIR/$1.nlo -s nomencl.ist -o $OUTDIR/$1.nls
pdflatex -no-shell-escape -interaction=batchmode -draftmode --output-directory $OUTDIR $1
pdflatex -no-shell-escape -interaction=batchmode -output-directory $OUTDIR $1
