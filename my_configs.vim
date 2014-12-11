" This my own profile

" Auto close vim when there's only the nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" line number
set number

"Multi
if has("multi_byte")
    set encoding=utf-8
    set termencoding=utf-8
    set formatoptions+=mM
    set fencs=utf-8,gbk

    if v:lang =~? "^\(zh\)\|\(ja\)\|\(ko\)"
        set ambiwidth=double
    endif

    if has("win32")
        source VIMRUNTIME/delmenu.vimsourceVIMRUNTIME/menu.vim
        language message zh_CN.utf-8
    endif
else
    echoerr "Sorry, this version of (g)vim was not compiled with +multi_byte"
endif

"filetype
augroup filetype
    au! BufRead,BufNewFile *.proto setfiletype proto
    au! BufRead,BufNewFile *.as    setfiletype actionscript
augroup end

"Colors
set background=dark
try
    colorscheme solarized
catch
endtry

"taglist
nnoremap <silent> <F8> :TlistToggle<CR>

"My Plugins

call pathogen#infect('~/.vim_runtime/sources_psn/{}')
