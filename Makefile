TEXFILE = hinter-project.tex

all: compile

compile:
	xelatex $(TEXFILE)
	bibtex $(basename $(TEXFILE))
	xelatex $(TEXFILE)
	xelatex $(TEXFILE)

clean:
	rm -f *.bbl
	rm -f *.out
	rm -f *.synctex.gz
	rm -f *.aux
	rm -f *.blg
	rm -f *.bbl
	rm -f *latexmk
	rm -f *.fls
	rm -f *.log
	rm -f *.toc
	rm -f *.lof
	rm -f *.lot
	rm -f *.ilg
	rm -f *.ind
	rm -f *.idx
	rm -f $(TEXFILE).pdf
	rm -f *_flymake*

.PHONY: all compile clean
