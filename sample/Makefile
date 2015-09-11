default: build

build: sample.pdf

sample.pdf: sample.tex sample.bbl *.jpg
	docker run -ti --rm --user="$$(id -u):$$(id -g)" -v `pwd`:/src -w /src fgrehm/sbc-article-latex pdflatex sample.tex

sample.bbl: sample.bib
	docker run -ti --rm --user="$$(id -u):$$(id -g)" -v `pwd`:/src -w /src fgrehm/sbc-article-latex pdflatex sample.tex -output-directory=/tmp
	docker run -ti --rm --user="$$(id -u):$$(id -g)" -v `pwd`:/src -w /src fgrehm/sbc-article-latex bibtex sample

clean:
	rm -f sample.aux sample.bbl sample.blg sample.dvi sample.log sample.pdf
