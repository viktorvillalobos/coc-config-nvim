call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-commentary'

Plug 'chriskempson/base16-vim'

Plug 'https://github.com/ryanoasis/vim-devicons'

Plug 'https://github.com/adelarsq/vim-devicons-emoji'

Plug 'vim-airline/vim-airline'            " Lean & mean status/tabline for vim

Plug 'nvim-tree/nvim-web-devicons'        " lua `fork` of vim-web-devicons for neovim

Plug 'vim-airline/vim-airline-themes'     " Themes for airline

Plug 'yuttie/comfortable-motion.vim'      " Smooth scrolling

Plug 'thaerkh/vim-indentguides'           " Visual representation of indents

Plug 'yegappan/mru'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'tpope/vim-fugitive'

Plug 'mileszs/ack.vim' "Ack finder

"---------------------Linting----------------------------------
"
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Plug 'rodrigore/coc-tailwind-intellisense', {'do': 'npm install'}
Plug 'psf/black'
Plug 'fisadev/vim-isort'
Plug 'Vimjas/vim-python-pep8-indent'

"-------------------=== Python  ===-----------------------------

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Este de abajo es el que uso para ir a la base de la clase
Plug 'jeetsukumaran/vim-pythonsense'   


"-------------------=== Javascript  ===-----------------------------
Plug 'mattn/emmet-vim'
Plug 'pangloss/vim-javascript'
Plug 'alvan/vim-closetag'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'cakebaker/scss-syntax.vim'

Plug 'yaegassy/coc-htmldjango', {'do': 'yarn install --frozen-lockfile'}

Plug 'github/copilot.vim'


Plug 'kqito/vim-easy-replace'


" Prettier
Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'MunifTanjim/prettier.nvim'

call plug#end()

" Disable mouse selecction
set mouse=

set encoding=utf-8
let mapleader = ','
let g:airline_theme='base16_spacemacs'             " set airline theme
syntax enable                               " enable syntax highlighting
set tabstop=4                               " 4 whitespaces for tabs visual presentation
set shiftwidth=4                            " shift lines by 4 spaces
set smarttab                                " set tabs for a shifttabs logic
set expandtab                               " expand tabs into spaces
set autoindent                              " indent when moving to the next line while writing code
set number

set cursorline                              " shows line under the cursor's line
set showmatch                               " shows matching part of bracket pairs (), [], {}

set enc=utf-8	                            " utf-8 by default

set nobackup 	                            " no backup files
set nowritebackup                           " only in case you don't want a backup file while editing
set noswapfile 	                            " no swap files


set backspace=indent,eol,start              " backspace removes all (indents, EOLs, start) What is start?
set scrolloff=20                            " let 10 lines before/after cursor during scroll
set clipboard+=unnamedplus
set exrc                                    " enable usage of additional .vimrc files from working directory
set secure                                  " prohibit .vimrc files to execute shell, create files, etc...


"=====================================================
"" Tabs / Buffers settings
"=====================================================
tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>


"=====================================================
"" Search settings
"=====================================================
set incsearch	                            " incremental search
set hlsearch	                            " highlight search results

"=====================================================
"" NERDTree settings
"=====================================================
let NERDTreeIgnore=['\.pyc$', '\.pyo$', '__pycache__$']     " Ignore files in NERDTree
let NERDTreeWinSize=40
"autocmd VimEnter * if !argc() | NERDTree | endif  " Load NERDTree only if vim is run without arguments
nmap " :NERDTreeToggle<CR>
nmap @ :NERDTreeToggle<CR>
" nmap @ :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


"=====================================================
"" AirLine settings
"=====================================================
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='unique_tail'
let g:airline_powerline_fonts=1


"---------------- Vista.Vim --------------
" function! NearestMethodOrFunction() abort
"   return get(b:, 'vista_nearest_method_or_function', '')
" endfunction

" set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
" set laststatus=2  " always display the status line
" set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc 
" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()


"=====================================================
"" DevIcon Settings
"=====================================================
" loading the plugin 
let g:webdevicons_enable = 1

" adding the flags to NERDTree 
let g:webdevicons_enable_nerdtree = 1

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs 
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags 
let g:webdevicons_conceal_nerdtree_brackets = 0

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1 

" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = '‚àÜ√µ'

" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = '√ì√§√°'

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1

" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0

" Envs for neovim in case you need
let g:python_host_prog = '/Users/viktor/.envs/venv2/bin/python'
let g:python3_host_prog = '/Users/viktor/.envs/venv3.10/bin/python3'

let g:loaded_python_provider = 0


" ------ BASE 16 -----------------
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif


""""""""""""""""""""""""""""""
" => GO TO DEFINITION
""""""""""""""""""""""""""""""
:map <leader>gd <C-]>

""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <C-e> :MRU<CR>


""""""""""""""""""""""""""""""
" => Ctrl P
""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'


""""""""""""""""""""""""""""""
" => Ctrl P
""""""""""""""""""""""""""""""
let g:vue_pre_processors = ['scss']


""""""""""""""""""""""""""""""
" => Isort
""""""""""""""""""""""""""""""

let g:vim_isort_map = '<c-i>'

let g:vim_isort_python_version = 'python3'

""""""""""""""""""""""""""""""
" => Black
nnoremap <C-A-l> :Black<CR>
" let g:black_fast=0
let g:black_linelength=88
" let g:black_skip_string_normalization = 1
" let g:black_virtualenv='~/.vim/black'


""""""""""""""""""""""""""""""
" => VIM JS
""""""""""""""""""""""""""""""
let g:javascript_plugin_jsdoc = 1

autocmd FileType typescriptreact setlocal ts=2 sts=2 sw=2
autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType vue setlocal ts=2 sts=2 sw=2
autocmd FileType elixir setlocal ts=2 sts=2 sw=2

""""""""""""""""""""""""""""""
" => ACK
""""""""""""""""""""""""""""""

" if executable('ag')
let g:ackprg = 'ag --nogroup --nocolor --column'
" endif


""""""""""""""""""""""""""""""
" => Vim-Vue
""""""""""""""""""""""""""""""


let g:vue_pre_processors = ['pug', 'sass']
autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css
let g:vim_vue_plugin_load_full_syntax = 1
let g:vim_vue_plugin_debug = 1



" let g:user_emmet_leader_key='<C-z>'

let s:emmet_settings = {
            \'vue': {
            \'extends': 'html',
            \},
            \}



""""""""""""""""""""""""""""
" YAML
""""""""""""""""""""""""""""

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab


xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

nmap <C-l> :Black<CR>
nmap <C-i> :Isort<CR>

"Coc Saas
autocmd FileType scss setl iskeyword+=@-@

" Activate colors
set termguicolors


command Ts yiw :ts

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                             \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"



" Disable quote concealing in JSON files
let g:vim_json_conceal=0


" CoC settings
" nmap <silent> gs :call CocAction('jumpDefinition', 'split')<CR>
nmap <silent> gd :call CocAction('jumpDefinition')<CR>
nmap <silent> gt :call CocAction('jumpDefinition', 'vsplit')<CR>
nnoremap <silent>gr :call CocAction('jumpReferences')<CR>

" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>



