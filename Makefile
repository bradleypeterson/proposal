FILES = proposal.aux proposal.blg proposal.dvi proposal.log proposal.ps proposal.pdf

PAPER = proposal

all :
	pdflatex -shell-escape $(PAPER).tex
	bibtex   $(PAPER)
	pdflatex -shell-escape $(PAPER).tex
	pdflatex -shell-escape $(PAPER).tex

clean :
	rm -f $(FILES)
