:set number
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/vim-airline/vim-airline' "vim airline
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'

call plug#end()

" Airline conf
:let mapleader = "\<Space>"
let g:airline_theme='default'
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


" <C-ww> for change windows
" <C-w> + H J K L for navigate bettwen windows
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

" allows file modifications
:set modifiable

" start nerdtree in the current file directory
autocmd BufEnter * lcd %:p:h

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
"
"

