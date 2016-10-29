markdown-mode-texinfo
=====================

Texinfo-format manual for [Jason Blevins][]' [Emacs Markdown Mode][]

This project is an alternative manual for Jason Blevins'
`markdown-mode` extension to [Emacs][] in `info` format.

Status: 1st draft is complete. No independent review yet. No install
in Makefile.

[Texinfo][], the documentation format of the Emacs manual and
other [GNU project documentation][], while much more complex and
arcane than [markdown][], excels at creating documentation for
Emacs. In particular, it allows for extensive indexing, allowing the
user to quickly find information via the Emacs help.

The Texinfo-format manual is compiled into info-format, which is
compatible with both Emacs' `info` reader and the command line [info][]
command. 

This `info` file must be installed in a directory with other `info`
files where `Emacs` can find it. See $ info '(texinfo)New Info
File'.

The Texinfo-format manual can also be compiled into HTML, PDF, ePub
and other formats - even markdown. Type `make` to display options.

-- Daniel Birket

[Jason Blevins]: http://jblevins.org/cv

[Emacs Markdown Mode]: http://jblevins.org/projects/markdown-mode/

[Emacs]: https://www.gnu.org/software/emacs/

[info]: https://www.gnu.org/software/emacs/manual/html_mono/info.html

[Texinfo]: https://www.gnu.org/software/texinfo/manual/texinfo/html_node/Overview.html#Overview

[markdown]: http://daringfireball.net/projects/markdown/syntax

[GNU project documentation]: https://www.gnu.org/manual/manual.html
