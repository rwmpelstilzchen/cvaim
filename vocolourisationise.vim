function! Vocolourisationise()
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
