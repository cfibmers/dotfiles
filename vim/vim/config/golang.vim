let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
let g:go_auto_type_info = 0
let g:go_highlight_extra_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_snippet_engine = "neosnippet"
let g:go_bin_path = expand("~/.gotools")

if has("unix")
  let $PATH = g:go_bin_path . ':' . $PATH
else
  let $PATH = g:go_bin_path . ';' . $PATH
endif

function! golang#syn_if_longfile(param)
  let l:linecount = line('$')
  if linecount > 1500
    execute "syn ".a:param
  endif
endfunction

augroup go_fastgo
  autocmd!
  autocmd BufWritePre *.go call golang#syn_if_longfile('off')
  autocmd BufWritePost *.go call golang#syn_if_longfile('on')
augroup END
