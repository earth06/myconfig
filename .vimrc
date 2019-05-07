syntax on
colorscheme molokai
set backspace=indent,eol,start
set fenc=utf-8
set clipboard+=autoselect 
set clipboard+=unnamed  
"Tab => Space
set expandtab
set tabstop=4
set shiftwidth=4
"status line setting"
set statusline=%F
set statusline+=%m
set statusline+=%r
set statusline+=%= 
set statusline+=[%l/%L]
set laststatus=2
"set number
set cursorline
"search setting
set hlsearch
set showcmd
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set ignorecase
set showmatch
"set list
"zenkakuspace----
function! ZenkakuSpace()
    highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
   
if has('syntax')
    augroup ZenkakuSpace
        autocmd!
        autocmd ColorScheme       * call ZenkakuSpace()
        autocmd VimEnter,WinEnter * match ZenkakuSpace /　/
    augroup END
    call ZenkakuSpace()
endif
"-----------------
