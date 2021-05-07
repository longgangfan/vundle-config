if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif
nnoremap ,ri :RunInInteractiveShell 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly Run
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

map <F5> :call CompileRunGcc()<CR>

func! CompileRunGcc()
    exec "w" 
    if &filetype == 'c' 
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'cpp'
        exec '!g++ % -o %<'
        exec '!time ./%<'
    elseif &filetype == 'python'
        exec '!time python3 %'
    elseif &filetype == 'sh'
        :!time bash %
    endif                                                                              
endfunc 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"User Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set cursorline"下划线
set autoindent"自动换行
set cindent"C语言换行
set nu"行号
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"hotkey to run
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C Compiler:
autocmd FileType c nnoremap <buffer> <F5> :!gcc % && ./a.out <CR>
"
"C++ Compiler
" autocmd FileType cpp nnoremap <buffer> <F5> :!g++ % && ./a.out <CR>
"
"Python Interpreter
autocmd FileType python nnoremap <buffer> <F5> :!python3 % <CR>
"Latex Compiler
autocmd FileType tex nnoremap <buffer> <F5> :!xelatex %  <CR>
