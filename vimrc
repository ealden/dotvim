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

autocmd FileType ruby,php,sql,coffee,javascript,html autocmd BufWritePre * :%s/\s\+$//e

map ,t :tabnew<cr>

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
