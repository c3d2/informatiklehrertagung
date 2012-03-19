TEX_FILES=$(wildcard src/*.tex)
PDF_FILES=$(TEX_FILES:src/%.tex=out/%.pdf)

all: $(PDF_FILES)

clean:
	rm -rf out

out/%.pdf: src/%.tex
	@mkdir -p out
	pdflatex -output-directory out $<
