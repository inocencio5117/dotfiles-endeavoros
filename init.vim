" to search for any function in this session: :help {sessio_name}
:set exrc
:set nohlsearch
:set relativenumber
:set nu
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set expandtab
:set softtabstop=2
:set mouse=a
:set incsearch
:set scrolloff=8
:set signcolumn=yes
:syntax on

" Disable ALE for avoid conflicts with coc
let g:ale_disable_lsp = 1
let g:ale_completion_enabled = 1

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/vim-airline/vim-airline' "vim airline
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'dense-analysis/ale'
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }
" prettier usage:
" leader + p
" :Prettier

call plug#end()

" Airline conf
:let mapleader = "\<Space>"
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
  nmap <leader>1 <Plug>AirlineSelectTab1
  nmap <leader>2 <Plug>AirlineSelectTab2
  nmap <leader>3 <Plug>AirlineSelectTab3
  nmap <leader>4 <Plug>AirlineSelectTab4
  nmap <leader>5 <Plug>AirlineSelectTab5
  nmap <leader>6 <Plug>AirlineSelectTab6
  nmap <leader>7 <Plug>AirlineSelectTab7
  nmap <leader>8 <Plug>AirlineSelectTab8
  nmap <leader>9 <Plug>AirlineSelectTab9
  nmap <leader>0 <Plug>AirlineSelectTab0
  nmap <leader>- <Plug>AirlineSelectPrevTab
  nmap <leader><Tab> <Plug>AirlineSelectNextTab

" prettier auto format
let g:prettier#autoformat = 1

" Ale config
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1

"Coc-explorer config
" ? with tab open for help
:nmap <space>e <Cmd>CocCommand explorer<CR>

" allows file modifications
:set modifiable

" Allow auto prettier auto formatting
let g:prettier#autoformat_require_pragma = 0

" remap for tagbar
nmap <F8> :TagbarToggle<CR>

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" list of plugins installed:
" coc-<plugin_name>
" pyright
" css
" html
" json
" markdownlint
" tabnine
" tsserver
" explorer
"

