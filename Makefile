MAIN=paper

pdf:
	latexmk -pdf $(MAIN) -auxdir=output -outdir=output

arxiv: pdf
	mkdir -p arxiv
	cp output/*.bbl paper.tex *.cls *.bst arxiv
	#arXiv has algorithm 4.01 installed; minimum version needed for us is 5.0
	curl -o arxiv/algorithm2e.sty http://ctan.sharelatex.com/tex-archive/macros/latex/contrib/algorithm2e/tex/algorithm2e.sty
	cd arxiv && zip arxiv.zip *

clean:
	rm -rvf *.bbl *.blg *.aux *.fls *.fdb_latexmk *.log *.out *.toc $(MAIN).pdf aux output arxiv

