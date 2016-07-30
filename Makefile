SOURCE	:= markdown-mode.texi
INCLUDE	:= fdl.texi gpl-2.0.texi


most: markdown-mode.info markdown-mode.html markdown-mode.pdf
	# make most targets

markdown-mode.info: ${SOURCE} ${INCLUDE}
	texi2any --info ${SOURCE}

markdown-mode.html: ${SOURCE} ${INCLUDE}
	texi2any --HTML --no-split --no-headers ${SOURCE} | smartypants
	emacsclient -n -e '(eww-open-file "markdown-mode.html")' || true

markdown-mode.pdf: ${SOURCE} ${INCLUDE}
	texi2pdf ${SOURCE}
	open markdown-mode.pdf

markdown-mode.ps: ${SOURCE} ${INCLUDE}
	texi2dvi --ps  ${SOURCE}

markdown-mode.xml: ${SOURCE} ${INCLUDE}
	texi2any --docbook ${SOURCE}

markdown-mode.epub: markdown-mode.xml
	pandoc -s -t epub -o markdown-mode.epub -f docbook markdown-mode.xml

markdown-mode.md: markdown-mode.xml
	pandoc -s -t markdown_strict -o markdown-mode.md -f docbook markdown-mode.xml

clean:
	rm *.aux *.cp *.cps *.toc || true
	rm *.dvi *.ps || true
	rm *.xml *.epub markdown-mode.md || true
