SOURCE	:= markdown-mode.texi
INCLUDE	:= fdl.texi gpl-2.0.texi gpl.texi

TEXI2ANY = texi2any
TEXI2PDF = texi2pdf
TEXI2DVI = texi2dvi
PANDOC = pandoc
GZIP = gzip

help:
	# Options:
	# make info
	# make html
	# make pdf
	# make ps
	# make txt
	# make docbook
	# make clean

info: markdown-mode.info.gz

markdown-mode.info: ${SOURCE} ${INCLUDE}
	$(TEXI2ANY) --info $<

markdown-mode.info.gz: markdown-mode.info
	$(GZIP) $<

html: markdown-mode.html

markdown-mode.html: ${SOURCE} ${INCLUDE}
	$(TEXI2ANY) --HTML --no-split --no-headers ${SOURCE} | smartypants

pdf: markdown-mode.pdf

markdown-mode.pdf: ${SOURCE} ${INCLUDE}
	$(TEXI2PDF) $<

ps: markdown-mode.ps

markdown-mode.ps: ${SOURCE} ${INCLUDE}
	$(TEXI2DVI) --ps  $<

txt: markdown-mode.txt

markdown-mode.txt: ${SOURCE} ${INCLUDE}
	$(TEXI2ANY) --plaintext $< >$@

docbook: markdown-mode.xml

markdown-mode.xml: ${SOURCE} ${INCLUDE}
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
	rm *.dvi *.ps || true
	rm *.xml *.epub markdown-mode.md || true
