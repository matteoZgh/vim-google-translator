let s:path = expand('<sfile>:p:h') . "/translator.py"
func! TranslateForCursor()
	echom system("python3 " . s:path . " " . expand("<cword>"))
endfunc
func! TranslateForVisual()
	normal! gv"ay
	echom system("python3 " . s:path . " " . @a)
endfunc
