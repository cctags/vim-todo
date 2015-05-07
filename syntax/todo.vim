" Vim syntax file
" Language: TODO
" Author:   Matthew Urry
" Created:  Thu 16 Apr 2009 10:18:10 AM BST
" Modified: Thu 16 Apr 2009 03:29:34 PM BST

if version < 600
	syntax clear
elseif exists("b:current_syntax")
	finish
endif

"syn match tododone        /\[v\]/
"syn match todoinprogress  /\[\*\]/
"syn match todotodo        /\[\ \]/
"syn match tododate	  /\d\{4}\-\d\{2}\-\d\{2}/
syn region canceled start=/\[x\]/ end=/\n/
syn region done start=/\[v\]/ end=/\n/
syn region inprogress start=/\[\!\]/ end=/\n/
syn region matttodo start=/\[\ \]/ end=/\n/
syn region majorpoint start=/==>/ end=/-->/me=s-3 contains=ALL
syn match minorpoint  /-->/
syn region todomodified start=/Modified:/ end=/$/

if !exists("did_todo_syntax_inits")
	let did_todo_syntax_inits = 1

    hi link canceled tCanceled
    hi default tCanceled ctermfg=lightgray guifg=DarkGray

	hi link tododone tDone
    hi link done tDone
    hi default tDone ctermfg=lightgray guifg=LightGray
	hi link todoinprogress tProgress
    hi link inprogress tProgress
    hi default tProgress ctermfg=red guifg=Red
	hi link todotodo tTodo
    hi link matttodo tTodo
    hi default tTodo ctermfg=darkblue guifg=Black
    hi link majorpoint tMajor
     hi default tMajor ctermfg=DarkMagenta guifg=DarkMagenta
    hi link minorpoint tMinor
     hi default tMinor ctermfg=DarkBlue guifg=DarkBlue
    hi link tododate tdate
    hi link todomodified tdate
    hi default tdate ctermfg=gray guifg=DarkRed

    hi Normal ctermfg=gray

endif

let b:current_syntax="todo"
