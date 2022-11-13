" Layout & Formatting
set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set backspace=indent,eol,start
set complete-=1
set encoding=utf-8


" Plugins
call plug#begin('~/.config/nvim/autoload/')

Plug 'junegunn/vim-easy-align'
Plug 'pangloss/vim-javascript'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'mattn/vim-gist'
" Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
" or                                , { 'branch': '0.1.x' }
Plug 'norcalli/nvim-colorizer.lua'
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
Plug 'tribela/vim-transparent'

call plug#end()

" Color Scheme

" Remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader>hv :Hex<CR>
nnoremap <leader>sv :Sex<CR>
nnoremap <leader>ex :Explore<CR>
nnoremap <leader><CR> :so ~/.config/nvim/init.vim<CR>
nnoremap <leader>0 :e ~/.config/nvim/init.vim<CR>

" Remaps - Quality of Life (Undo)
nnoremap <C-z> u
vnoremap <C-z> u

" Remaps - File Exploration
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

" Remaps - Open in Browser
nnoremap <leader><C-o> :!%:p<CR>

" Remaps - Copy & Pasting
vnoremap <leader>p "_dP
vnoremap <leader>y "+y
nnoremap <leader>y "+y
" Copy Entire Page
nnoremap <leader>Y gg"+yG

" Remaps - Move Code
vnoremap K :m '<-2<CR>gv=gv 
vnoremap J :m '>+1<CR>gv=gv

" Remaps - Insert New Lines
nnoremap <Leader>o o<Esc>0"_D
nnoremap <Leader>O O<Esc>0"_D


" Align GitHub-flavored Markdown tables
vnoremap <Leader><Bar> :EasyAlign*<Bar><Enter>

" Prettier
nmap <Leader>pr <Plug>(Prettier)

" Telescope
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" NerdTree Remaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" COC Remaps
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

"ejs
au BufNewFile,BufRead *.ejs set filetype=html

" color
highlight Pmenu ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#000000
