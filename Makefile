all:  GettingStartedWithMaMuT.tex GettingStartedWithMaMuT
#all: wiki.tex wiki
#all: wikiserver.tex wikiserver

#all: tikztest

.PHONY:
tikztest: TEXFILE=tikztest.tex
tikztest: default

.PHONY:
GettingStartedWithMaMuT: TEXFILE=GettingStartedWithMaMuT.tex
GettingStartedWithMaMuT: default

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
