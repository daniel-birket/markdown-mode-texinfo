# markdown-mode-texinfo
Texinfo-format manual for [Jason Blevins][jblevins]' [Emacs Markdown Mode][markdown-mode]

This project provides an alternative to the manual provided with Jason
Blevins' `markdown-mode` extension to [Emacs][Emacs]. This manual is
compatible with the [`info`][info] help function of Emacs, including
its [index][index] abilities.

This project is as yet still in progress with no viable version for either
review or release.

Jason Blevins' `markdown-mode.el` Lisp source code includes an
extensive block of comments documenting that software. The comment
block is extracted as a [markdown-format][markdown-format] manual. The
extracted manual (once located) can be consulted in one buffer while
working with Emacs Markdown Mode in another buffer, or the user may
consult the [online manual][markdown-mode] instead. The program also
includes documentation strings describing its functions, which are
accessible through other help functions of Emacs. This is perhaps
adequate documentation for a majority of Emacs users.

[Texinfo][Texinfo], the documentation format of Emacs and other
[GNU][GNU] programs, while wildly more [complex][Texinfo-format] than
[markdown-format][markdown-format], excels at publishing documentation
about, and for use with, Emacs. In particular, it allows for extensive
indexing of the manual, allowing the user to quickly find needed
information. The Texinfo format manual is compiled into info-format,
which is compatible with both Emacs' `info` reader and the command line
`info` command. The [Texinfo-format][Texinfo-format] manual can also
be compiled into HTML, PDF and print formats, as well as markdown-format.

This manual's author undertook the challenge of creating a Texinfo manual
as a learning exercise and acknowledges Jason Blevins' understandable
adversion (even aside from the innate irony) to maintaining a manual
for markdown-mode.el in the complex Texinfo-format.

-- Daniel Birket

[markdown-mode]: http://jblevins.org/projects/markdown-mode/

[jblevins]: http://jblevins.org/cv

[markdown-format]: http://daringfireball.net/projects/markdown/syntax

[Texinfo]: https://www.gnu.org/software/texinfo/manual/texinfo/html_node/Overview.html#Overview

[Emacs]: https://www.gnu.org/software/emacs/

[GNU]: https://www.gnu.org

[info]: https://www.gnu.org/software/emacs/manual/html_mono/info.html

[index]: https://www.gnu.org/software/emacs/manual/html_mono/info.html#Search-Index

[Texinfo-format]: https://www.gnu.org/software/texinfo/manual/texinfo/html_node/index.html#Top
