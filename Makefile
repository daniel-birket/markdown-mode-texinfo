SOURCE	:= markdown-mode.texi
INCLUDE	:= fdl.texi gpl-2.0.texi gpl.texi

INFODIR := /usr/local/share/info/emacs

TEXINFODIR := /usr/local/Cellar/texinfo/6.3/bin
TEXI2ANY := $(TEXINFODIR)/texi2any
TEXI2PDF := $(TEXINFODIR)/texi2pdf
TEXI2DVI := $(TEXINFODIR)/texi2dvi
INSTALLINFO := $(TEXINFODIR)/install-info
SMARTYPANTS := /usr/local/bin/smartypants
PANDOC := /usr/local/bin/pandoc
GZIP := /usr/bin/gzip
INSTALL := /usr/bin/install

help:
	# Options:
	# make info
	# make install
	#
	# make html
	# make pdf
	# make ps
	# make txt
	# make docbook
	# make epub	# lacks index
	# make md	# lacks index
	#
	# make clean
	#
	# Be sure to update file locations in top of Makefile for your system.

info: markdown-mode.info.gz

html: markdown-mode.html

pdf: markdown-mode.pdf

ps: markdown-mode.ps

txt: markdown-mode.txt

docbook: markdown-mode.xml

epub: markdown-mode.epub

md: markdown-mode.md

markdown-mode.info: ${SOURCE} ${INCLUDE}
	$(TEXI2ANY) --info $<

markdown-mode.info.gz: markdown-mode.info
	$(GZIP) $<

install: markdown-mode.info.gz
	$(INSTALL) $< $(INFODIR)
	$(INSTALLINFO) $(INFODIR)/$< $(INFODIR)/dir

markdown-mode.html: ${SOURCE} ${INCLUDE}
	$(TEXI2ANY) --HTML --no-split --no-headers ${SOURCE} | ${SMARTYPANTS}

markdown-mode.pdf: ${SOURCE} ${INCLUDE} markdown-mode.info
	$(TEXI2PDF) $<

markdown-mode.ps: ${SOURCE} ${INCLUDE} markdown-mode.info
	$(TEXI2DVI) --ps  $<

markdown-mode.txt: ${SOURCE} ${INCLUDE}
	$(TEXI2ANY) --plaintext $< >$@

markdown-mode.xml: ${SOURCE} ${INCLUDE} markdown-mode.info
	$(TEXI2ANY) --docbook $<

# index entries are not handled correctly in epub version
markdown-mode.epub: markdown-mode.xml
	$(PANDOC) -s -t epub -o $@ -f docbook $<

# index entries are not handled correctly in markdown version
markdown-mode.md: markdown-mode.xml
	$(PANDOC) -s -t markdown_strict -o $@ -f docbook $<

clean:
	rm *.aux *.toc *.log || true
	rm *.cp *.cps *.vr *.vrs *.fn *.fns *.ky *.kys *.pg *.pgs || true
	rm markdown-mode.dvi markdown-mode.ps || true
	rm markdown-mode.xml markdown-mode.epub markdown-mode.md || true
	rm markdown-mode.html markdown-mode.txt markdown-mode.pdf || true
	rm markdown-mode.info markdown-mode.info.gz || true
	rm README.html || true
