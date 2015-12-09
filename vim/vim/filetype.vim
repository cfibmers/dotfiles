" Setup the file types for PLX
augroup filetypedetect
    au BufNewFile,BufRead *.plx     setfiletype plx
    au BufNewFile,BufRead *.mac     setfiletype plx
    au BufNewFile,BufRead *.jcl     setfiletype jcl
    au BufNewFile,BufRead *.proc    setfiletype jcl
    au BufNewFile,BufRead *.[sS]    setfiletype hlasm
    au BufNewFile,BufRead *.gradle  setfiletype groovy
    au BufNewFile,BufRead *.mc      setfiletype c
    au BufNewFile,BufRead *.mc31    setfiletype c
    au BufNewFile,BufRead *.bnd     setfiletype conf
augroup END

