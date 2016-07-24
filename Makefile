SOURCE	:= markdown-mode.texi
INCLUDE	:= fdl.texi gpl-2.0.texi


all: markdown-mode.info markdown-mode.html markdown-mode.pdf markdown-mode.ps markdown-mode.md markdown-mode.epub
	# make all targets

markdown-mode.info: ${SOURCE} ${INCLUDE}
	texi2any --info ${SOURCE}

markdown-mode.dbk: ${SOURCE} ${INCLUDE}
	texi2any --docbook ${SOURCE}

markdown-mode.html: ${SOURCE} ${INCLUDE}
	texi2any --HTML --no-split --no-headers ${SOURCE}

markdown-mode.pdf: ${SOURCE} ${INCLUDE}
	texi2pdf ${SOURCE}

markdown-mode.ps: ${SOURCE} ${INCLUDE}
	texi2dvi --ps  ${SOURCE}

markdown-mode.md: markdown-mode.dbk
	pandoc -s -t markdown_strict -o markdown-mode.md -f docbook markdown-mode.xml

markdown-mode.epub: markdown-mode.dbk
	pandoc -s -t epub -o markdown-mode.epub -f docbook markdown-mode.xml

clean:
	rm markdown-mode.info markdown-mode.html markdown-mode.pdf markdown-mode.aux markdown-mode.cp markdown-mode.cps markdown-mode.toc markdown-mode.md markdown-mode.ps markdown-mode.epub markdown-mode.xml markdown-mode.dvi
