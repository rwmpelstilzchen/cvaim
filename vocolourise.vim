noremap <F6> :call VokeyboardOn()<cr>
noremap <F7> :call VokeyboardOff()<cr>
noremap <F8> :call Vocolourise()<cr>

function! VokeyboardOn()
	imap a a<left>
	imap e e<left>
	imap i i<left>
	imap o o<left>
	imap u u<left>
	imap x x<left>
	imap A A<left><left>
	imap E E<left><left>
	imap I I<left><left>
	imap O O<left><left>
	imap U U<left><left>
	imap 3a \a<right>{<left><left><left>}
	imap 3e \e<right>{<left><left><left>}
	imap 3i \i<right>{<left><left><left>}
	imap 3o \o<right>{<left><left><left>}
	imap 3u \u<right>{<left><left><left>}
	imap <space> <left>
	imap d <left>ּ<right>
	imap s <left>ׂ<right>
	imap <cr> <down><home>
endfunction

function! VokeyboardOff()
	imap a a
	imap e e
	imap i i
	imap o o
	imap u u
	imap x x
	imap A A
	imap E E
	imap I I
	imap O O
	imap U U
	call 3a 3a
	call 3e 3e
	call 3i 3i
	call 3o 3o
	call 3u 3u
	imap <space> <space>
	imap d d
	imap s s
	imap <cr> <cr>
endfunction

function! Vocolourise()
	" begin with lowercase (=one letter)
	try
		while 1==1
			:normal /\C\(a\|e\|i\|o\|u\|x\)[א-ת]/
			:normal i\
			:normal la{
			:normal la}
		endwhile
	catch /^Vim\%((\a\+)\)\=:E486/
	endtry

	" then uppercase (=two letters)
	try
		while 1==1
			:normal /\C\(A\|E\|I\|O\|U\)[א-ת]/
			:normal i\
			:normal lgul
			:normal a{
			:normal lla}
		endwhile
	catch /^Vim\%((\a\+)\)\=:E486/
	endtry
endfunction
