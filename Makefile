# the filename of the document

all:
	./convert_to_tex.py GettingStartedWithMaMuT.wtex GettingStartedWithMaMuT.tex
	pdflatex GettingStartedWithMaMuT.tex
	./convert_to_wiki.py GettingStartedWithMaMuT.wtex GettingStartedWithMaMuT.txt

