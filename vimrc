filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'xsbeats/vim-blade'
Plugin 'slim-template/vim-slim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rosstimson/bats.vim'
Plugin 'Keithbsmiley/rspec.vim'
Plugin 'tpope/vim-cucumber'
Plugin 'sunaku/vim-ruby-minitest'
Plugin 'vim-scripts/TailMinusF'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-obsession'
Plugin 'derekwyatt/vim-scala'

call vundle#end()
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

map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>

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
set splitright

autocmd FileType ruby,php,sql,coffee,javascript autocmd BufWritePre * :%s/\s\+$//e

map ,t :tabnew<cr>

autocmd BufRead,BufNewFile *.erb        set filetype=eruby.html
autocmd BufRead,BufNewFile *.coffee.erb set filetype=coffee
autocmd BufRead,BufNewFile *.gt         set filetype=javascript
autocmd BufRead,BufNewFile *.jt         set filetype=javascript
autocmd BufRead,BufNewFile *.gs         set filetype=javascript

set number
set relativenumber

autocmd User Rails map <buffer> <Leader>e :Rake!<CR>
autocmd User Rails map <buffer> <Leader>r :.Rake!<CR>

let g:rails_projections = {
      \ "features/*.feature": {
      \   "command":    "feature",
      \   "template":   "Feature: ",
      \   "alternate":  "features/step_definitions/{}_steps.rb"
      \ },
      \ "features/step_definitions/*_steps.rb": {
      \   "command":    "step",
      \   "template":   "",
      \   "alternate":  "features/{}.feature"
      \ }}
