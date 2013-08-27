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

CompilerSet makeprg=xctool\ -reporter\ plain
