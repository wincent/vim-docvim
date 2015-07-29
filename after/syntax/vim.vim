" Make doc block comments easier to read.
syntax region docvimBlock start='\v^ *""' end='\v\zs\ze^( *$|[^"])'

syntax match docvimAnnotation '@command' containedin=docvimBlock contained
syntax match docvimAnnotation '@dedent' containedin=docvimBlock contained
syntax match docvimAnnotation '@footer' containedin=docvimBlock contained
syntax match docvimAnnotation '@function' containedin=docvimBlock contained
syntax match docvimAnnotation '@header' containedin=docvimBlock contained
syntax match docvimAnnotation '@indent' containedin=docvimBlock contained
syntax match docvimAnnotation '@mapping' containedin=docvimBlock contained
syntax match docvimAnnotation '@option' containedin=docvimBlock contained
syntax match docvimAnnotation '@param' containedin=docvimBlock contained
syntax match docvimAnnotation '@plugin' containedin=docvimBlock contained
syntax match docvimAnnotation '@private' containedin=docvimBlock contained
syntax match docvimBackticks '\v`[^ `]+`' containedin=docvimBlock contained
syntax match docvimBlockquote '\v^\s*"\s+\zs\>\s+.+$' containedin=docvimBlock contained
syntax match docvimCrossReference '\v\c\|:?[a-z0-9()<>-]+\|' containedin=docvimBlock contained
syntax match docvimHeading '\v^\s*"\s+\zs#\s+.+$' containedin=docvimBlock contained
syntax match docvimSubheading '\v^\s*"\s+\zs##\s+.+$' containedin=docvimBlock contained
syntax match docvimTarget '\v\c\*:?[a-z0-9()<>-]+\*' containedin=docvimBlock contained

" Stolen from $VIMRUNTIME/syntax/help.vim:
syntax match docvimURL `\v<(((https?|ftp|gopher)://|(mailto|file|news):)[^' 	<>"]+|(www|web|w3)[a-z0-9_-]*\.[a-z0-9._-]+\.[^' 	<>"]+)[a-zA-Z0-9/]` containedin=docvimBlock contained

if has('conceal')
  syntax match docvimBacktick '\v`' containedin=docvimBackticks contained conceal
  syntax match docvimBar '\v\|' containedin=docvimCrossReference contained conceal
  syntax match docvimHeadingPrefix '\v# ' containedin=docvimHeading contained conceal
  syntax match docvimStar '\v\*' containedin=docvimTarget contained conceal
  syntax match docvimSubheadingPrefix '\v## ' containedin=docvimSubheading contained conceal
else
  syntax match docvimBacktick '\v`' containedin=docvimBackticks contained
  syntax match docvimBar '\v\|' containedin=docvimCrossReference contained
  syntax match docvimHeadingPrefix '\v# ' containedin=docvimHeading contained
  syntax match docvimStar '\v\*' containedin=docvimTarget contained
  syntax match docvimSubheadingPrefix '\v## ' containedin=docvimSubheading contained
endif

highlight default link docvimAnnotation String
highlight default link docvimBacktick Ignore
highlight default link docvimBackticks Ignore
highlight default link docvimBar Ignore
highlight default link docvimBlock Normal
highlight default link docvimBlockquote Comment
highlight default link docvimCrossReference Identifier
highlight default link docvimHeading Identifier
highlight default link docvimHeadingPrefix Identifier
highlight default link docvimStar Ignore
highlight default link docvimSubheading PreProc
highlight default link docvimTarget String
highlight default link docvimURL String
