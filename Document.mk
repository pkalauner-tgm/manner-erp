all:
	latexmk -pdf -interaction=nonstopmode -f

indent:
	latexindent *.tex -w -s

clean:
	latexmk -c
	rm -f *.bbl *.glg *.glo *.gls *.ist .latexrun.db *.pdf *.bak* *.synctex.gz indent.log *.tdo
