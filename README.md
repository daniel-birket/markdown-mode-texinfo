markdown-mode-texinfo
=====================

Texinfo-format manual for [Jason Blevins][]' [Emacs Markdown Mode][]

This project provides an alternative to the manual provided with Jason
Blevins' `markdown-mode` extension to [Emacs][]. This manual is
compatible with the [`info`][info] help function of Emacs and include
an index, which the original manual lacks.

Jason Blevins' `markdown-mode.el` Lisp source code includes an
extensive block of commentary, which is extracted to create markdown and
HTML format manuals, but not the info-format used by Emacs' help. The
markdown-format manual (once located) can be consulted in one buffer
while working with Emacs Markdown Mode in another buffer or the user
may consult the HTML-format [online manual][]. The program also uses
Emacs self-documenting features and the user could always consult the
source code itself if s/he knows how. This is adequate documentation
for expert Emacs users, but I am not an expert.

[Texinfo][], the documentation format of the Emacs manual and other
[GNU project documentation][], while more complex and arcane than
[markdown][], excels at creating documentation about and for Emacs. In
particular, it allows for extensive indexing, allowing the user to
quickly find information via the Emacs help.

The Texinfo-format manual is compiled into info-format, which is
compatible with both Emacs' `info` reader and the command line `info`
command. (This `info` file must be installed in a directory with other
`info` files where `Emacs` can find it. See $ info '(texinfo)New Info
File'.) The Texinfo-format manual can also be compiled into HTML, PDF,
ePub and other formats - even markdown.

This project is still in progress with no release version.

-- Daniel Birket

[Jason Blevins]: http://jblevins.org/cv

[Emacs Markdown Mode]: http://jblevins.org/projects/markdown-mode/

[Emacs]: https://www.gnu.org/software/emacs/

[info]: https://www.gnu.org/software/emacs/manual/html_mono/info.html

[online manual]: http://jblevins.org/projects/markdown-mode/

[Texinfo]: https://www.gnu.org/software/texinfo/manual/texinfo/html_node/Overview.html#Overview

[markdown]: http://daringfireball.net/projects/markdown/syntax

[GNU project documentation]: https://www.gnu.org/manual/manual.html








