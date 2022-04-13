" Vim syntax file
" Language   : STOICAL
" Maintainer : Jonathan M. Liles <wantingwaiting@users.sf.net>
" Last change: 04/22/2002
"
" Notes: This file was generated by genvim. Do not edit. 

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

syn case ignore

if version >= 600
	setlocal iskeyword=!,@,35-64,A-Z,91-96,a-z,123-126,128-255
else
	set iskeyword=!,@,35-64,A-Z,91-96,a-z,123-126,128-255
endif

syn keyword stoical_todo contained FIXME TODO
syn match stoical_todo contained 'Copyright\(\s([Cc])\)\=\(\s[0-9]\{2,4}\)\='

" Word set.
syn keyword stoical_string cat count type stype msg $eq $ne word iliteral string ascii 
syn keyword stoical_binary add - / * mod /mod and or xor feq fne lt gt le ge + eq 
syn keyword stoical_conditional mark? check +check -check { } (else) (if) {if {else (else) {ifelse if{ }else{ if else then 
syn keyword stoical_compiler exit ^ eoc eol stack stack vocab decompile vstack rtn bye inspect prompt compile clearcst eval execc 
syn keyword stoical_thread thread detach join me cancel delay shared 
syn keyword stoical_array ]@ ]! ]push pop ]delete ]insert )@ )! )delete array hash ]? )? 
syn keyword stoical_stack cells mark swap drop dup over nip tuck -rot +rot flip idup idrop <l l> <c c> .t retype [[ ]] l]] [ ] 
syn keyword stoical_literal l() 
syn keyword stoical_regex rs() r() 
syn keyword stoical_source load include ;f 
syn keyword stoical_var @ ! ? @@ 1+! 
syn keyword stoical_system args[ system env> <env (env) 
syn keyword stoical_io chdir mkdir rmdir unlink mkfifo umask open close write read writeln readln flush seek stat (get) (put) (getln) (putln) get put ttyput ttyget getln putln ttyputln ttygetln opendir closedir readdir socket bind listen accept connect shutdown sendfile frdline rdline = cr space spaces tab 
syn keyword stoical_.. 
syn keyword stoical_variables pad warnings current .c .l .r .v .d tib 
syn keyword stoical_error errch abort 
syn keyword stoical_dictionary (:) ({:) (:{) ):{ ():{) enter ({) (b{) (}) {}> (;) immediate (constant) fconstant (variable) ((variable)) definitions stoical< (branch) branch disregard > address // self }> types< constant variable ~ recurse 
syn keyword stoical_constants true false 
syn keyword stoical_iterative i j k redo ({do) ({loop) ({+loop) {loop {+loop ({() ({)) {( ()do) (){each) ){each {until {while break }until }while{ loop{ +loop{ )each{ ( ) begin end 
syn keyword stoical_. 
" Define some things better represented with regular expressions..
" syn clear stoical_stack
syn match stoical_dictionary '\<()[ \t]\+[^ \t]\+\>' oneline
syn keyword stoical_Types S F R P IO A H C * BAH FLOAT REFERENCE contained
syn keyword stoical_Types STRING POINTER STREAM ARRAY HASH CLAUSE contained
syn region stoical_TypeDef start=+:(+ end=+):{+ end=+):+ contains=stoical_Types

syn region stoical_ColonDef start=+:[ \t]+ end=+\<;\>+ contains=ALL fold transparent
syn region stoical_ColonDef start=+:$+ end=+\<;\>+ contains=ALL fold transparent
syn region stoical_string start=+\"+ end=+[^\\]"+ end=+$+ oneline
syn region stoical_string start=+'+ end=+\s+ end=+$+ oneline

syn match stoical_string '\<ascii[ \t].\>' oneline
syn match stoical_regex '\<x[ \t][bsigmn]\+\>' oneline
syn region stoical_regex start=+\.*|+ end=+[^\\]|+ end=+$+ oneline

syn match stoical_integer '\<-\=[0-9.]*[0-9.]\+\>' oneline
syn match stoical_hex '\<[0-9a-fA-F]*[0-9][0-9a-fA-F]*\>' oneline
syn match stoical_float '\<-\=[0-9]*[.]\=[0-9]\+[Ee][0-9]\+\>' oneline


" Comments
syn match stoical_comment '\s%\s.*$' contains=stoical_todo oneline
syn match stoical_comment '^%\s.*$' contains=stoical_todo oneline
syn match stoical_comment '^#!\s.*$' oneline

syn match stoical_string /%%.*$/hs=s+3 contains=stoical_compiler oneline
" Include files
syn match stoical_include '^['"].* \(load\|include\)' oneline
hi link stoical_todo Todo
hi link stoical_unary Operator
hi link stoical_binary Operator
hi link stoical_math Number
hi link stoical_integer Number
hi link stoical_float Float
hi link stoical_stack Special
hi link stoical_io Special
hi link stoical_regex String
hi link stoical_include Include
hi link stoical_iterative Repeat
hi link stoical_conditional Conditional
hi link stoical_compiler Statement
hi link stoical_comment Comment
hi link stoical_constants Conditional
hi link stoical_variables Statement
hi link stoical_var Function
hi link stoical_array Function
hi link stoical_dictionary Define
hi link stoical_string String
hi link stoical_ColonDef Define
hi link stoical_TypeDef Define
hi link stoical_Types Typedef
hi clear Folded
hi link Folded Define
syn sync fromstart
syn sync maxlines=100

let b:current_syntax = "stoical"
set foldmethod=syntax
set foldminlines=4
set fillchars=fold::
