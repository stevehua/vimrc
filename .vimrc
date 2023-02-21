" Set hybrid line numbering
set number relativenumber

" Set 256 colors in terminal
set t_Co=256

" Enable syntax highlighting 
syntax on

" Set theme to slate
colorscheme koehler 
 
" Set tabs to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" Enable search highlighting
set incsearch
set hlsearch

" Clear search highlighting when pressing ESC
nnoremap <esc> :noh<return><esc>

" Enable insert cursor to display as an underscore when using SSH
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[1 q" "SR = REPLACE mode (i.e. when Insert is pressed on keyboard)
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:

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