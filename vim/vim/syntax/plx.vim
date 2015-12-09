" Vim syntax file
" Language:     PL/X
" Maintainer:   Matthew Sykes <sykesmat@us.ibm.com>
" Last Change:  2007 Oct 18

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn include @plxAsm390 <sfile>:p:h/asm390.vim

syn case ignore
syn region plxGenerated matchGroup=plxGenerate start="^\s\+generate\s\+\([^;]\|\n\)\+;" end="@endgen" contains=@plxAsm390 keepend

syn sync ccomment plxComment maxlines=500

syn keyword plxConditional   if then else when otherwise while
syn keyword plxType          fixed char[acter] struct binary uchar[acter] bit pointer ptr viapointer
syn keyword plxType          label entry area isa string number byte
syn keyword plxStorageClass  static automatic based defined location mapped register constant
syn keyword plxStorageClass  builtin overloaded virtual
syn keyword plxProcedure     proc[edure]
syn keyword plxStatement     begin call dcl declare declareclass do end entry
syn keyword plxStatement     exit to goto if initialize iterate
syn keyword plxStatement     leave null procedure rfy respecify return select
syn keyword plxAttribute     signed unsigned varying substrlen offset intoarea locates locatesa
syn keyword plxAttribute     boundary bdy normal abnormal validated as public private protected
syn keyword plxGenerate      generate @endgen

syn match plxIdentifier             "\<[A-Za-z\$\#][A-Za-z0-9_\@\$\#]\{0,39}\>"
syn match plxExternalIdentifier     "\<[A-Za-z\$\#][A-Za-z0-9\@\$\#]\{0,7}\>"
syn match plxLabel          "\s\+[?]\?[A-Za-z\#\$][A-Za-z0-9_\@\#\$]\{0,9\}:"he=e-1
syn match plxGenerate       "@endgen"

syn match plxNumber         "[0-9]\d*"

syn region plxString start="'" end="'"

syn region plxComment start="\!" skip="['"]" end="$" contains=plxTodo
syn region plxComment start="/\*" end="\*/" contains=plxTodo

syn region plxBlock start="do" end="end" contains=plxBlock

syn keyword plxTodo TODO FIXME XXX NOTE contained

hi def link plxString       String
hi def link plxLabel        Label
hi def link plxComment      Comment
hi def link plxConditional  Conditional
hi def link plxStatement    Statement
hi def link plxGenerate     Statement
hi def link plxStorageClass StorageClass
hi def link plxAttribute    StorageClass
hi def link plxTodo         Todo
hi def link plxType         Type
hi def link plxNumber       Number

let b:current_syntax = "plx"
