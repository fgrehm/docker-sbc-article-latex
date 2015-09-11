build:
	docker build -t fgrehm/sbc-article-latex .

hack:
	docker run -ti --rm --user="$$(id -u):$$(id -g)" -v `pwd`/sample:/workspace -w /workspace fgrehm/sbc-article-latex bash
