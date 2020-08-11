let s:path = expand('<sfile>:p:h') . "/translator.py"
func! s:TranslateForCursor()
	let s:res = trim(system("python3 " . s:path . " " . expand("<cword>")))
	echom s:res
endfunc
func! s:TranslateForVisual()
	normal! gv"ay
	let s:res = trim(system("python3 " . s:path . " \"" . @a . "\""))
	echom s:res
endfunc

command! Gtc call <SID>TranslateForCursor()
command! Gtv call <SID>TranslateForVisual()
