all:
	./convert_to_tex.py GettingStartedWithMaMuT.wtex GettingStartedWithMaMuT.tex
	pdflatex GettingStartedWithMaMuT.tex
	./convert_to_wiki.py GettingStartedWithMaMuT.wtex GettingStartedWithMaMuT.txt

clean:
	rm *.aux *.log *.out *.toc
	rm GettingStartedWithMaMuT.pdf GettingStartedWithMaMuT.tex GettingStartedWithMaMuT.txt

