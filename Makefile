.PHONY: copy render

copy:
	cat main.asm | wl-copy
simulate:
	java -jar rars.jar nc main.asm

render:
	cd relatorio && pdflatex -shell-escape -interaction=nonstopmode relatorio-joao-luis-almeida-santos.tex
	cd relatorio && pdflatex -shell-escape -interaction=nonstopmode relatorio-joao-luis-almeida-santos.tex
	cp relatorio/relatorio-joao-luis-almeida-santos.pdf .
	rm -f trabalho-joao-luis-almeida-santos-20240002508.zip
	zip trabalho-joao-luis-almeida-santos-20240002508.zip relatorio-joao-luis-almeida-santos.pdf main.asm rars.jar Makefile
