let mapleader=','

syntax on

set nocp
set bs=indent,eol,start
set sw=2 sts=2 et
set hls is ic scs
set history=200
set updatecount=0

set number
set relativenumber

set autochdir
set splitbelow
set splitright

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

au User Rails map <buffer> <Leader>e :Rake!<CR>
au User Rails map <buffer> <Leader>r :.Rake!<CR>

au BufRead,BufNewFile *.coffee.erb  set ft=coffee
au BufRead,BufNewFile *.erb         set ft=eruby.html
au BufRead,BufNewFile *.gradle      set ft=groovy
au BufRead,BufNewFile *.gs          set ft=javascript
au BufRead,BufNewFile *.gt          set ft=javascript
au BufRead,BufNewFile *.jt          set ft=javascript
au BufRead,BufNewFile *.axlsx       set ft=ruby
au BufRead,BufNewFile berksfile     set ft=ruby
au BufRead,BufNewFile Gemfile       set ft=ruby
au BufRead,BufNewFile Guardfile     set ft=ruby
au BufRead,BufNewFile *.vba         set ft=vb

au FileType ruby        au BufWritePre * :%s/\s\+$//e
au FileType php         au BufWritePre * :%s/\s\+$//e
au FileType sql         au BufWritePre * :%s/\s\+$//e
au FileType coffee      au BufWritePre * :%s/\s\+$//e
au FileType javascript  au BufWritePre * :%s/\s\+$//e
au FileType html        au BufWritePre * :%s/\s\+$//e
au FileType cs          au BufWritePre * :%s/\s\+$//e
au FileType json        au BufWritePre * :%s/\s\+$//e

au FileType cs setl sw=4 sts=4 et

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

let g:ackprg = 'ag --vimgrep'
