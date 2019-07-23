let mapleader=','

set nocompatible
syntax on
filetype plugin indent on

set backspace=indent,eol,start
set shiftwidth=2 softtabstop=2 expandtab
set autoindent smartindent cindent
set hlsearch incsearch ignorecase smartcase 
set history=200
set updatecount=0

set number
set relativenumber

set splitbelow
set splitright

set nowrap

set encoding=utf8
set fileencoding=utf8

set wildmenu
set wildmode=list:longest
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class

set laststatus=2
set statusline=%F\ %m\ %r
set statusline+=%{FugitiveStatusline()}
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

map <Leader>t :tabnew<CR>
map <Leader>f :Autoformat<CR>
map <Leader>s :set hlsearch! hlsearch?<CR>
map <Leader>o :Copen<CR>

autocmd User Rails map <buffer> <Leader>e :Rails!<CR>
autocmd User Rails map <buffer> <Leader>r :.Rails!<CR>

autocmd BufRead,BufNewFile *.coffee.erb set filetype=coffee
autocmd BufRead,BufNewFile *.erb        set filetype=eruby.html
autocmd BufRead,BufNewFile *.gradle     set filetype=groovy
autocmd BufRead,BufNewFile *.gs         set filetype=javascript
autocmd BufRead,BufNewFile *.gt         set filetype=javascript
autocmd BufRead,BufNewFile *.jt         set filetype=javascript
autocmd BufRead,BufNewFile *.axlsx      set filetype=ruby
autocmd BufRead,BufNewFile berksfile    set filetype=ruby
autocmd BufRead,BufNewFile Gemfile      set filetype=ruby
autocmd BufRead,BufNewFile Guardfile    set filetype=ruby
autocmd BufRead,BufNewFile *.vba        set filetype=vb

autocmd FileType ruby       autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType php        autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType sql        autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType coffee     autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType javascript autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType html       autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType cs         autocmd BufWritePre * :%s/\s\+$//e
autocmd FileType json       autocmd BufWritePre * :%s/\s\+$//e

autocmd FileType cs setlocal shiftwidth=4 softtabstop=4 expandtab

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

let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

let g:ctrlp_user_command = 'ag --nogroup --nobreak --noheading --nocolor --hidden -g "" %s '
let g:ctrlp_working_path_mode = 'ra'

let g:ackprg = 'ag --vimgrep --smart-case'
cnoreabbrev Ag Ack
