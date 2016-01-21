MAIN=paper

pdf:
	latexmk -pdf $(MAIN) -auxdir=output -outdir=output

clean:
	rm -rvf *.bbl *.blg *.aux *.fls *.fdb_latexmk *.log *.out *.toc $(MAIN).pdf aux output

