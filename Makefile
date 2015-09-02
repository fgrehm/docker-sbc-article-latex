build:
	docker build -t fgrehm/latex .

hack:
	docker run -ti --rm --user="$$(id -u):$$(id -g)" -v `pwd`/sbc-template:/workspace -w /workspace fgrehm/latex bash
