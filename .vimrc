" Enable hybrid line numbering
set number relativenumber

" Set 256 colors in terminal
set t_Co=256

" Enable syntax highlighting 
syntax on

" Set theme
colorscheme koehler 
 
" Set tabs to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Enable search highlighting
set incsearch
set hlsearch

" Clear search highlighting when pressing ESC (Need TermResponse to avoid entering VIM in replace mode)
" https://stackoverflow.com/questions/11940801/mapping-esc-in-vimrc-causes-bizarre-arrow-behaviour/16027716#16027716
augroup no_highlight
    autocmd TermResponse * nnoremap <silent> <esc> :noh<return><esc>
augroup END

" Enable insert mode cursor to display as an underscore when using SSH
" https://vim.fandom.com/wiki/Change_cursor_shape_in_different_modes
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[1 q" "SR = REPLACE mode (i.e. when Insert is pressed on keyboard)
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" Cursor settings numbering for above:
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar

" Mapping Shift + Up and Shift + Down arrows to move lines up and down
" (Alt modifier does not work in Windows Terminal)
" https://vim.fandom.com/wiki/Moving_lines_up_or_down

nnoremap <S-Down> :m .+1<CR>==
nnoremap <S-UP> :m .-2<CR>==
inoremap <S-Down> <Esc>:m .+1<CR>==gi
inoremap <S-Up> <Esc>:m .-2<CR>==gi
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv

" Remove audio bell sound on error or when scrolling to edge of page margins
set visualbell

" Scrolling keybinds
" https://www.reddit.com/r/vim/comments/fnyb2e/how_do_you_not_get_lost_using_cd_cu_when_scrolling/
nnoremap <C-y> 3<C-y>
nnoremap <C-e> 3<C-e>
nnoremap <C-d> 22jzz
nnoremap <C-u> 22kzz


" Disable 'Press ENTER or type command to continue" prompt on alt + tab whilst using SSH
" https://stackoverflow.com/questions/43533302/e349-no-identifier-under-cursor
nnoremap ^] <Nop>
