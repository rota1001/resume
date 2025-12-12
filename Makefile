TEX=resume.tex
PDF=resume.pdf

all: $(PDF)

$(PDF): $(TEX)
	latexmk -xelatex -pdf -interaction=nonstopmode -synctex=1 $(TEX)

clean:
	latexmk -c
	rm -f $(PDF)
.PHONY: all clean
