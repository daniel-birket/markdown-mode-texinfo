SOURCE	:= markdown-mode.texi
INCLUDE	:= fdl.texi gpl-2.0.texi gpl.texi


most: markdown-mode.info markdown-mode.html markdown-mode.pdf
	# make most targets

markdown-mode.info: ${SOURCE} ${INCLUDE}
	texi2any --info $<

markdown-mode.html: ${SOURCE} ${INCLUDE}
	texi2any --HTML --no-split --no-headers ${SOURCE} | smartypants
	emacsclient -n -e '(eww-open-file "'$@'")' || true

markdown-mode.pdf: ${SOURCE} ${INCLUDE}
	texi2pdf $<
	open $@

markdown-mode.ps: ${SOURCE} ${INCLUDE}
	texi2dvi --ps  $<

markdown-mode.xml: ${SOURCE} ${INCLUDE}
	texi2any --docbook $<

markdown-mode.epub: markdown-mode.xml
	pandoc -s -t epub -o $@ -f docbook $<

markdown-mode.md: markdown-mode.xml
	pandoc -s -t markdown_strict -o $@ -f docbook $<

clean:
	rm *.aux *.cp *.cps *.toc *.vr *.vrs || true
	rm *.dvi *.ps || true
	rm *.xml *.epub markdown-mode.md || true
