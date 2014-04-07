filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'rking/ag.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-rbenv'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-commentary'
Bundle 'xsbeats/vim-blade'
Bundle 'slim-template/vim-slim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'elzr/vim-json'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rosstimson/bats.vim'
Bundle 'Keithbsmiley/rspec.vim'
Bundle 'tpope/vim-cucumber'
Bundle 'sunaku/vim-ruby-minitest'

filetype plugin indent on

let mapleader=','

syntax on

set nocp
set bs=indent,eol,start
set sw=2 sts=2 et
set hls is ic scs
set history=200
set updatecount=0

set wildmenu
set wildmode=list:longest
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class

set laststatus=2
set statusline=%F\ %m\ %r
set statusline+=%{fugitive#statusline()}
set statusline+=\ %l/%L[%p%%]
set statusline+=\ %v[0x%B]

" disable cursor keys in normal mode
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>

" easily switch between splits by holding C plus navigation keys
map <C-H> <C-W>h
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

let g:ctrlp_user_command = 'ag --nogroup --nobreak --noheading --nocolor --hidden -g "" %s '
let g:ctrlp_working_path_mode = 'ra'

set autochdir
set splitbelow

autocmd FileType ruby,php,sql,coffee,js autocmd BufWritePre * :%s/\s\+$//e

" set background=dark
" colorscheme molokai
" let g:molokai_original = 1
