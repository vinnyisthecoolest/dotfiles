call plug#begin('~/.local/share/nvim/plugged')

Plug 'romainl/flattened'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
Plug 'kassio/neoterm'
Plug 'scrooloose/nerdtree'
" Plug 'hkupty/iron.nvim'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-fugitive'
" Plug 'haya14busa/incsearch.vim'
Plug 'vyzyv/vimpyter'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'junegunn/goyo.vim'
Plug 'reedes/vim-pencil'
Plug 'rhysd/vim-grammarous'
Plug 'junegunn/limelight.vim'

call plug#end()


" " Colours
" set termguicolors
" set background=dark
" colorscheme onedark
colorscheme flattened_dark

" General Settings
set number
set relativenumber
set nowrap
set tabstop=2 shiftwidth=2 expandtab
set list
set listchars=tab:▸\ ,trail:¬,extends:→,precedes:←,nbsp:.
hi VertSplit ctermfg=8

" General keys
let mapleader = "\<Space>"
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
" nnoremap <leader>n :set number! <cr> <bar> :set relativenumber! <cr>
nnoremap <leader><leader> <C-^>
" nnoremap <BS> <C-^>
nnoremap Y y$
nnoremap \ @

" Mouse
set mouse=nv

" Terminal/Split keys
tnoremap <Esc> <C-\><C-n>
" tnoremap <A-h> <C-\><C-N><C-w>h
" tnoremap <A-j> <C-\><C-N><C-w>j
" tnoremap <A-k> <C-\><C-N><C-w>k
" tnoremap <A-l> <C-\><C-N><C-w>l
" inoremap <A-h> <C-\><C-N><C-w>h
" inoremap <A-j> <C-\><C-N><C-w>j
" inoremap <A-k> <C-\><C-N><C-w>k
" inoremap <A-l> <C-\><C-N><C-w>l
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k
" nnoremap <A-l> <C-w>l

tnoremap <A-space> <C-\><C-N><C-w>w
inoremap <A-space> <C-\><C-N><C-w>w
nnoremap <A-space> <C-w>w

" nnoremap <leader>l <C-w>w i <C-l> <C-\><C-n> <C-w>w

au TermOpen * setlocal nonumber norelativenumber

" Highlight text width
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

" --------------- PLUGINS ---------------- "

" Nerdtree
nnoremap <leader>t :NERDTreeToggle<CR>

" Iron
" let g:iron_map_defaults=0
" let g:iron_repl_open_cmd = 'botright vertical split'

" nnoremap <silent> <leader>R :IronRepl <cr>
" nnoremap <silent> <A-t> :IronRepl <cr>
" " nmap <silent> <leader>r <Plug>(iron-send-motion)
" " nmap <silent> <leader>rr <Plug>(iron-send-motion)ip
" " nmap <silent> <leader>rl 0<Plug>(iron-send-motion)$
" nmap <silent> <leader>r <Plug>(iron-send-motion)ip
" vmap <silent> <leader>r <Plug>(iron-send-motion)


" fzf
" nnoremap <leader>b :Buffers<cr>
nnoremap <leader>h :History<cr>
nnoremap <leader>f :Ag<cr>
nnoremap <leader>o :Files<cr>

" UltiSnips
let g:UltiSnipsSnippetsDir='~/.config/nvim/UltiSnips'
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Polyglot
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
" let g:vim_markdown_frontmatter = 1
" let g:markdown_syntax_conceal = 0
let g:pencil#conceallevel = 0

au BufRead *.md set filetype=md.liquid


" write stuff
let g:pencil#textwidth = 80
let g:goyo_width = 85
nnoremap <leader>m :Goyo <bar> :TogglePencil <cr>

" Autopairs
autocmd VimEnter,BufEnter,BufWinEnter * silent! iunmap <buffer> <M-">

" JS
" let g:javascript_opfirst = '^\C\%([<>=,?^%|/&]\|\([-:+]\)\1\@!\|\*\+\|!=\|in\%(stanceof\)\=\>\)'

" Incsearch
set smartcase
" let g:incsearch#auto_nohlsearch = 1
" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)

" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
" map *  <Plug>(incsearch-nohl-*)
" map #  <Plug>(incsearch-nohl-#)
" map g* <Plug>(incsearch-nohl-g*)
" map g# <Plug>(incsearch-nohl-g#)

" Vimpyter
autocmd Filetype ipynb nmap <silent><Leader>b :VimpyterInsertPythonBlock<CR>
autocmd Filetype ipynb nmap <silent><Leader>j :VimpyterStartJupyter<CR>

" Neoterm
let g:neoterm_autoscroll = 1
" let g:neoterm_direct_open_repl = 1

nnoremap <silent> <A-t> :vert rightb Tnew <cr>

nnoremap <silent> <leader>r vip :TREPLSendSelection<cr>
" nnoremap <silent> <leader>rf :TREPLSendFile<cr>
" nnoremap <silent> <leader>rt :TREPLSendLine<cr>
vnoremap <silent> <leader>r :TREPLSendSelection<cr>

" nnoremap <silent> <leader>rh :call neoterm#close()<cr>
nnoremap <silent> <A-l> :Tclear <cr>
nnoremap <silent> <A-c> :Tkill <cr>

nnoremap <A-z> :-tabedit % <cr>
nnoremap <A-Z> :tabclose <cr>
