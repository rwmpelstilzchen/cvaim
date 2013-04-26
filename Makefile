all:
	#latexmk -xelatex -file-line-error $1
	echo $2

pvc:
	latexmk -silent -pvc -file-line-error $1

clean:
	-rm *.aux *.bbl *.blg *.log *.toc *.url *.cut *.bib *.run.xml *.bst *.bcf *.fls *.fdb_latexmk *.out *.dvi

distclean: clean
	-rm *.pdf
