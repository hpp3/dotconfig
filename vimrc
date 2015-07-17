call pathogen#infect()
set cindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set ignorecase
set smartcase
set incsearch
set hlsearch
set backspace=2
set mouse=a
map <C-d> <C-w>h
map <C-n> <C-w>l
colorscheme Tomorrow-Night-Bright
syntax on
filetype plugin indent on
let mapleader = "," 
let g:EasyMotion_leader_key = '<Leader>'
"let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0 
let g:airline_theme='tomorrow'
let g:airline#extensions#syntastic#enabled = 1 
let g:SuperTabDefaultCompletionType = "context"
hi TabLineFill ctermfg=236
hi TabLine ctermfg=236 ctermbg=White
hi TabLineSel ctermfg=220 ctermbg=236
set laststatus=2
set ttimeoutlen=50
set encoding=utf-8
set number
noremap ; :
map <Space> <Leader>f
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
"nnoremap gc N//<Enter>c//e<Enter>
nnoremap g<Space> :noh<Enter>
let g:rbpt_colorpairs = [ 
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['blue',    'firebrick3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['cyan',    'SeaGreen3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['green',   'RoyalBlue3'],
    \ ['yellow',       'SeaGreen3'],
    \ [166,       'RoyalBlue3'],
    \ ['red',         'firebrick3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ]
let g:rbpt_max = 30
let g:rbpt_loadcmd_toggle = 0 
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
nnoremap <buffer> <F5> :w<cr>:exec '!python' shellescape(@%, 1)<cr>
nmap :: :w<CR>
map <c-[>OH ^
imap <c-[>OH <Esc>^i
map Q za
imap kj <Esc>
map <c-b> <c-]>
noremap <c-[>H ^
noremap <c-[>[F $
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
let g:session_autoload = 'yes'
let g:session_autosave = 'yes'
