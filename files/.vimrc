
syntax on

" don't highlight matching parenthesis
let loaded_matchparen = 0

set noautoindent
set nocindent
set nosmartindent
set indentexpr=

set nobackup
set noswapfile
set nowrap
set number
set hlsearch
set incsearch
set splitbelow
set splitright
set showcmd
set shiftwidth=4
set tabstop=4


" copy and paste (shift+insert)
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" ctrl-n to toggle line numbers
nmap <C-N> :set invnumber<CR>

" delete first character on line and move down
imap <F2> <Esc>@='^xj'<CR>i
" comment line with '#' and move down
imap <F3> <Esc>@='I#<C-V><Esc>j'<CR>i
" delete first character on line and move down
nmap <F2> @='^xj'<CR>
" comment line with '#' and move down
nmap <F3> @='I#<C-V><Esc>j'<CR>

" on F5 store last executed command in register 'r'
map <F5> :let @r = @:<CR>
map! <F5> <ESC>:let @r = @:<CR>
" on F6 execute the command stored in register 'r'
map <F6> :@r<CR>
map! <F6> <ESC>:@r<CR>
" on F8 clear console and run current file
map <F8> :w <bar> !clear; ./% <CR>
map! <F8> <ESC>:w <bar> !clear; ./% <CR>

" ctrl-alt arrow to move line
nnoremap <C-A-Up>          :m .-2  <CR>
nnoremap <C-A-Down>        :m .+1  <CR>
inoremap <C-A-Up>   <Esc>  :m .-2  <CR>i
inoremap <C-A-Down> <Esc>  :m .+1  <CR>i
vnoremap <C-A-Up>          :m '<-2 <CR>gv
vnoremap <C-A-Down>        :m '>+1 <CR>gv

" resize window
nnoremap <C-H> :wincmd h <CR>:vertical resize -1 <CR>
nnoremap <C-J> :wincmd k <CR>:resize -1 <CR>
nnoremap <C-K> :wincmd k <CR>:resize +1 <CR>
nnoremap <C-L> :wincmd h <CR>:vertical resize +1 <CR>

nnoremap ;c :close   <CR>
nnoremap ;h :split   <CR>
nnoremap ;q :quitall <CR>
nnoremap ;v :vsplit  <CR>
nnoremap ;w :w       <CR>
nnoremap ;x :x       <CR>

nnoremap ;1 :b 1 <CR>
nnoremap ;2 :b 2 <CR>
nnoremap ;3 :b 3 <CR>
nnoremap ;4 :b 4 <CR>
nnoremap ;5 :b 5 <CR>
nnoremap ;6 :b 6 <CR>
nnoremap ;7 :b 7 <CR>
nnoremap ;8 :b 8 <CR>
nnoremap ;9 :b 9 <CR>
nnoremap ;0 :b 0 <CR>

nnoremap ;$ :%s/$\(\w\+\)/${\1:?}/gc<CR>
nnoremap ;; :nohlsearch <CR>
nnoremap ;. :cnext      <CR>
nnoremap ;, :clast      <CR>
nnoremap ;/ :cope       <CR>

" navigating buffers
nnoremap + :bn<CR>
nnoremap - :bp<CR>
nnoremap _ :bd<CR>











