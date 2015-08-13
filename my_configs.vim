" This my own profile

"My Plugins
call pathogen#infect('~/.vim_runtime/sources_psn/{}')

" Auto close vim when there's only the nerdtree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" line number
set number
set autoread
set nowrapscan

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
colorscheme default
set background=dark
try
    let g:solarized_termcolors = 256
    colorscheme solarized
catch
endtry

"taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_winWidth = 50
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Right_Window = 1
let Tlist_Show_One_File = 1

"WinManager
let g:winManagerWindowLayout = "FileExplorer|TagList"
let g:winManagerWidth = 50
nmap wm :WMToggle<cr>

"My Plugins Config
"disable luainspect autorun
"let g:lua_inspect_events = ''
"nmap <F6> :LuaInspectToggle<CR>
"disable luainspect warning
"let g:lua_inspect_warnings = 0

