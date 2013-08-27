" Vim compiler file
" Compiler:     xctool
" Maintainer:	Tom Brow (tom@tombrow.com)
" Last Change:	2013 Aug 27

if exists("current_compiler")
  finish
endif
let current_compiler = "xctool"

if exists(":CompilerSet") != 2		" older Vim always used :setlocal
  command -nargs=* CompilerSet setlocal <args>
endif

" xctool errors conform to Vim quickfix's default error format
CompilerSet errorformat&

" xctool prints console output verbatim, and NSLog timestamps get misparsed as
" errors. Throw out any line that starts with an NSLog-style timestamp.
CompilerSet errorformat^=%-G%\\d%\\d%\\d%\\d-%\\d%\\d-%\\d%\\d\ %\\d%\\d:%\\d%\\d:%\\d%\\d.%\\d%\\d%\\d\ %.%#

CompilerSet makeprg=xctool\ -reporter\ plain
