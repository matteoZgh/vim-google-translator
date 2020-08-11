let s:path = expand('<sfile>:p:h') . "/translator.py"
func! TranslateForCursor()
	let s:res = trim(system("python3 " . s:path . " " . expand("<cword>")))
	echom s:res
endfunc
func! TranslateForVisual()
	normal! gv"ay
	let s:res = trim(system("python3 " . s:path . " " . @a))
	echom s:res
endfunc

command! gtc call TranslateForCursor()
command! gtv call TranslateForVisual()
