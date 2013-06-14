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
	imap <space> <left>
	map d laּ<esc>
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
	imap <space> <space>
	map d d
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
