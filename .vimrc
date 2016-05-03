"Pathogen Initialization
execute pathogen#infect()
"syntax on
filetype plugin indent on

"Change the leader to ,
let mapleader=","
"Dissable swap files
:set noswapfile

"Nerd Tree Stuff
nnoremap <C-n> :NERDTreeToggle<cr>
nnoremap <C-down> :resize +10<cr>
nnoremap <C-left> :vertical resize -10<cr>
nnoremap <C-up> :resize -10<cr>
nnoremap <C-right> :vertical resize +10<cr>
let g:NERDTreeWinSize = 30
set t_Co=256
"colorscheme codeschool

"Indenting Stuff
setlocal tabstop=2
setlocal shiftwidth=2
set softtabstop=2
set expandtab
set ls=2
autocmd FileType * set tabstop=2|set shiftwidth=2
:set nu

""Set end of line with demarcation
scriptencoding utf-8
set encoding=utf-8
set list
set listchars=trail:·,precedes:«,extends:»,eol:¬,tab:▸\ 

""Go to line number by typing the line number and enter
:nmap <CR> G

"Map the search from top to bottom in the supertab plugin
let g:SuperTabDefaultCompletionType = "context"


"Dissable Arrow keys for navigation
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

"Set easymotion plugin key to be s
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap ss <Plug>(easymotion-s)

"Airline stuff
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_theme = 'airlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 0
if !exists('g:airline_symbols')
      let g:airline_symbols = {}
endif
""let g:airline_left_sep = '▶'
""let g:airline_right_sep = '◀'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"Ctrl+p extensions.
set runtimepath^=~/.vim/bundle/ctrlp.vim
"Adding the ;; keybinding to enter normal mode
map! ii <Esc> " map ii to Esc

"Setting F5 to display all buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>

"Setting auto pairs here
let g:AutoPairsFlyMode = 1
":nnoremap <CR> :nohlsearch<CR><CR>
:set nowrap
"Setting window splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright
""Set tags to be generated in the home folder"
set tags=./tags;
set fillchars+=vert:\||

"Setting multi line cursors
let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<S-n>'
let g:multi_cursor_prev_key='<S-p>'
let g:multi_cursor_skip_key='<S-x>'
let g:multi_cursor_quit_key='<Esc>'


let g:mustache_abbreviations = 1


"Setting color scheme to .ng-classify"
au BufNewFile,BufRead *.ng-classify set filetype=coffee
