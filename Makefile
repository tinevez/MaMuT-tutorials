# the filename of the document

all:
	make -C paper
	make -C supplement
	pdftk \
		paper/nm.pdf \
		nmfigure/drawing.pdf \
		supplement/supplement.pdf \
		cat output nm.pdf

cleanall: clean
	make -C paper clean
	make -C suppl-fileformat clean
	make -C suppl-rendering clean
	make -C suppl-architecture clean
	make -C suppl-plugins clean
	make -C supplement clean


#all: wiki.tex wiki

#all: wikiserver.tex wikiserver

#all: tikztest

.PHONY:
tikztest: TEXFILE=tikztest.tex
tikztest: default

.PHONY:
wiki: TEXFILE=wiki.tex
wiki: default

.PHONY:
wikiserver: TEXFILE=wikiserver.tex
wikiserver: default

.PHONY:
figall: rmtikzdep all

.PHONY:
rmtikzdep:
	rm .tmp/tikz.dep

.PHONY:
page: TEXFILE=page.tex
page: default

#PDFVIEWER=open
#PDFVIEWER=open -a "Adobe Reader"

# an optional directory for files that are shared across different documents
COMMONDIR=./common

# rule to create tex file from wtex
%.tex:%.wtex
	./convert_to_tex.py $< $@

# rule to create txt file from wtex
%.txt:%.wtex
	./convert_to_wiki.py $< $@

include ./build/Makefile.targets
