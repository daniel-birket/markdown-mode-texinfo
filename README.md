markdown-mode-texinfo
=====================

This project is an alternative, info-format manual for
[Jason Blevins][]' [Markdown Mode][] extension to [Emacs][].

Status: Updated for `markdown-mode` version 2.3. Not yet reviewed.

[Texinfo][], the documentation format of the Emacs manual and other
[GNU project documentation][], while quite arcane compared to the
simplicity of [markdown][], was designed to create indexed
documentation usable from within Emacs.

The Texinfo-format manual is compiled into info-format, which is
compatible with both Emacs' `info` reader and the command line [info][]
command. Type `$ make info`.

You may type `$ make install` to install the .info file into the
directory with your other emacs info files, but you must first update
the file locations in the Makefile to match your system.

This Texinfo-format manual can also be compiled into HTML, PDF, ePub
and other formats - even markdown. Type `make` or `make help` for
options.

-- Daniel Birket

[Jason Blevins]: http://jblevins.org/cv

[Markdown Mode]: http://jblevins.org/projects/markdown-mode/

[Emacs]: https://www.gnu.org/software/emacs/

[info]: https://www.gnu.org/software/emacs/manual/html_mono/info.html

[Texinfo]: https://www.gnu.org/software/texinfo/manual/texinfo/html_node/Overview.html#Overview

[markdown]: http://daringfireball.net/projects/markdown/syntax

[GNU project documentation]: https://www.gnu.org/manual/manual.html
