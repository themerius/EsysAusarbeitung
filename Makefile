.PHONY: pdf, clean

MAINTEX = main
CHAPTER = chapters/
BUILDPATH = _build/
BUILDNAME = EsysAusarbeitung

pdf:
	pdflatex $(MAINTEX).tex
	bibtex $(MAINTEX).aux
	pdflatex $(MAINTEX).tex
	pdflatex $(MAINTEX).tex
	mkdir -p $(BUILDPATH)
	mv $(MAINTEX).pdf $(BUILDPATH)$(BUILDNAME).pdf
	open $(BUILDPATH)$(BUILDNAME).pdf

clean:
	rm $(CHAPTER)*.aux
	rm $(MAINTEX).aux $(MAINTEX).toc $(MAINTEX).log $(MAINTEX).out
	rm $(MAINTEX).lof $(MAINTEX).bbl $(MAINTEX).blg
