MAIN=paper

pdf:
	latexmk -pdf $(MAIN) -auxdir=output -outdir=output

arxiv: pdf
	mkdir -p arxiv
	cp *.pdf output/*.bbl paper.tex *.cls *.bst arxiv
	#arXiv has algorithm 4.01 installed; minimum version needed for us is 5.0
	curl -o arxiv/algorithm2e.sty http://ctan.sharelatex.com/tex-archive/macros/latex/contrib/algorithm2e/tex/algorithm2e.sty
	#arXiv uses TeXLive 2011 which apparently doesn't have this package
	curl -o arxiv/tcolorbox.sty http://ctan.math.washington.edu/tex-archive/macros/latex/contrib/tcolorbox/tcolorbox.sty
	curl -o arxiv/tcbskins.code.tex http://ctan.math.washington.edu/tex-archive/macros/latex/contrib/tcolorbox/tcbskins.code.tex
	curl -o arxiv/tcbskinsjigsaw.code.tex http://ctan.math.washington.edu/tex-archive/macros/latex/contrib/tcolorbox/tcbskinsjigsaw.code.tex
	#Test build
	cd arxiv && latexmk -pdf $(MAIN) -auxdir=crap -outdir=crap && rm -rf crap
	cd arxiv && zip arxiv.zip *

clean:
	rm -rvf *.bbl *.blg *.aux *.fls *.fdb_latexmk *.log *.out *.toc $(MAIN).pdf aux output arxiv

