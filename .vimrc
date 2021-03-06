set nocompatible
filetype off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'gmarik/vundle'
NeoBundle 'tpope/vim-surround.git'
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'cakebaker/scss-syntax.vim.git'
NeoBundle 'Lokaltog/vim-powerline.git'
NeoBundle 'Lokaltog/vim-easymotion.git'
NeoBundle 'Valloric/YouCompleteMe.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'git://repo.or.cz/vcscommand.git'
NeoBundle 'jimmyhchan/dustjs.vim'
NeoBundle 'MarcWeber/vim-addon-mw-utils.git'
NeoBundle 'tomtom/tlib_vim'
NeoBundle 'honza/vim-snippets'
NeoBundle 'garbas/vim-snipmate.git'
NeoBundle 'https://github.com/scrooloose/nerdcommenter.git'
NeoBundle 'godlygeek/tabular.git'
NeoBundle 'pangloss/vim-javascript.git'
NeoBundle 'majutsushi/tagbar.git'
NeoBundle 'suan/vim-instant-markdown.git'
NeoBundle 'vim-scripts/jsbeautify.git'
NeoBundle 'tpope/vim-unimpaired.git'
NeoBundle 'samsonw/vim-task'
NeoBundle 'venusjs/venus.vim'
NeoBundle 'vim-scripts/DirDiff.vim'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'Shougo/unite.vim.git'
NeoBundle 'Shougo/vimproc.vim.git'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 't9md/vim-unite-ack.git'
NeoBundle 'juvenn/mustache.vim'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'moll/vim-bbye.git'
NeoBundle 'mikewest/vimroom'
NeoBundle 'laktek/distraction-free-writing-vim'

filetype plugin indent on         " load file type plugins + indentation
syntax enable
set encoding=utf-8
set showcmd                       " display incomplete commands

"" Whitespace
set nowrap                        " don't wrap lines
set tabstop=2 shiftwidth=2        " a tab is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ...unless they contain at least on capital letter

"" Display
set number
set ruler
set cursorline
set list                          " reset list characters
set listchars=tab:\ \             " tab should display as  \ \
set listchars+=trail:.            " show trailing whitespace as dots
set listchars+=extends:>
set listchars+=precedes:<

map <C-m> <ESC>

" Change mapleader
let mapleader=","

"" Colors
set t_Co=256
colorscheme badwolf
set background=dark

"" Text manipulation
nmap <F7> :m--<CR>                 " move line of text up
nmap <F6> :m+<CR>                  " move line of text down 

"" Searching
if executable('ack')
    set grepprg=ack\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow\ $*
    set grepformat=%f:%l:%c:%m
    let g:unite_source_grep_command='ack'
    let g:unite_source_grep_default_opts='--no-heading --no-color -a -C4'
    let g:unite_source_grep_recursive_opt=''
  endif

if executable('ag')
  set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
  set grepformat=%f:%l:%c:%m
  let g:unite_source_grep_command='ag'
  let g:unite_source_grep_default_opts='--nocolor --nogroup -S -C4'
  let g:unite_source_grep_recursive_opt=''
endif

"" VIM Filer Explorer
let g:vimfiler_as_default_explorer = 1
" nmap <Leader>t :VimFilerSplit<CR>
nmap <Leader>t :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"" Control-P Bindings
nmap <Leader>. :CtrlP<CR>

"" Tab bindings
nmap tn :tabn<CR>
nmap tp :tabp<CR>

"" Undo/Redo
map <Leader>r :redo<CR>

"" Jump forward
map W <C-f>
map B <C-b>

"" Window switching
nmap <Leader>wk :wincmd k<CR>
nmap <Leader>wj :wincmd j<CR>
nmap <Leader>wh :wincmd h<CR>
nmap <Leader>w :wincmd w<CR>

"" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_javascript_checker='jshint'

"" Added for Powerline
set laststatus=2                  " always show the statusline

"" Tabularize
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:<CR>
  vmap <Leader>a: :Tabularize /:<CR>
endif

"" Tagbar
nmap <F8> :TagbarOpen fj<CR>
vmap <F8> :TagbarOpen fj<CR>
nmap <F7> :TagbarToggle<CR>
vmap <F7> :TagbarToggle<CR>

" Local dirs
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
set undodir=~/.vim/undo

" Set some junk
set autoindent " Copy indent from last line when starting new line.
set backspace=indent,eol,start
set cursorline " Highlight current line
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)
set encoding=utf-8 nobomb " BOM often causes trouble
set esckeys " Allow cursor keys in insert mode.
set expandtab " Expand tabs to spaces
set foldcolumn=4 " Column to show folds
set foldenable
set foldlevel=2
" set foldlevelstart=2 " Sets `foldlevel` when editing a new buffer
set foldmethod=syntax " Markers are used to specify folds.
set foldminlines=0 " Allow folding single lines
set foldnestmax=3 " Set max fold nesting level
set nofoldenable
set formatoptions=
set formatoptions+=c " Format comments
set formatoptions+=r " Continue comments by default
set formatoptions+=o " Make comment when using o or O from comment line
set formatoptions+=q " Format comments with gq
set formatoptions+=n " Recognize numbered lists
set formatoptions+=2 " Use indent from 2nd line of a paragraph
set formatoptions+=l " Don't break lines that are already long
set formatoptions+=1 " Break before 1-letter words
set gdefault " By default add g flag to search/replace. Add g to toggle.
set hidden " When a buffer is brought to foreground, remember undo history and marks.
set history=1000 " Increase history from 20 default to 1000
set hlsearch " Highlight searches
set ignorecase " Ignore case of searches.
set incsearch " Highlight dynamically as pattern is typed.
set laststatus=2 " Always show status line
set lispwords+=defroutes " Compojure
set lispwords+=defpartial,defpage " Noir core
set lispwords+=defaction,deffilter,defview,defsection " Ciste core
set lispwords+=describe,it " Speclj TDD/BDD
set magic " Enable extended regexes.
" set mouse=a " Enable moouse in all in all modes.
set noerrorbells " Disable error bells.
set nojoinspaces " Only insert single space after a '.', '?' and '!' with a join command.
set nostartofline " Don't reset cursor to start of line when moving around.
set nowrap " Do not wrap lines.
set nu " Enable line numbers.
set ofu=syntaxcomplete#Complete " Set omni-completion method.
set report=0 " Show all changes.
set ruler " Show the cursor position
set scrolloff=3 " Start scrolling three lines before horizontal border of window.
set shiftwidth=2 " The # of spaces for indenting.
set shortmess=atI " Don't show the intro message when starting vim.
set showmode " Show the current mode.
set showtabline=2 " Always show tab bar.
set sidescrolloff=3 " Start scrolling three columns before vertical border of window.
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters.
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces.
set softtabstop=2 " Tab key results in 2 spaces
set splitbelow " New window goes below
set splitright " New windows goes right
set suffixes=.bak,~,.swp,.swo,.o,.d,.info,.aux,.log,.dvi,.pdf,.bin,.bbl,.blg,.brf,.cb,.dmg,.exe,.ind,.idx,.ilg,.inx,.out,.toc,.pyc,.pyd,.dll
set title " Show the filename in the window titlebar.
set ttyfast " Send more characters at a given time.
set ttymouse=xterm " Set mouse type to xterm.
set undofile " Persistent Undo.
set visualbell " Use visual bell instead of audible bell (annnnnoying)
set wildchar=<TAB> " Character for CLI expansion (TAB-completion).
set wildignore+=*.jpg,*.jpeg,*.gif,*.png,*.gif,*.psd,*.o,*.obj,*.min.js
" set wildignore+=*/smarty/*,*/vendor/*,*/node_modules/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
set wildignore+=*/smarty/*,*/vendor/*,*/.git/*,*/.hg/*,*/.svn/*,*/.sass-cache/*,*/log/*,*/tmp/*,*/build/*,*/ckeditor/*
set wildmenu " Hitting TAB in command mode will show possible completions above command line.
set wildmode=list:longest " Complete only until point of ambiguity.
set winminheight=0 "Allow splits to be reduced to a single line.
set wrapscan " Searches wrap around end of file

" Status Line
" hi User1 guibg=#455354 guifg=fg      ctermbg=238 ctermfg=fg  gui=bold,underline cterm=bold,underline term=bold,underline
" hi User2 guibg=#455354 guifg=#CC4329 ctermbg=238 ctermfg=196 gui=bold           cterm=bold           term=bold
" set statusline=[%n]\ %1*%<%.99t%*\ %2*%h%w%m%r%*%y[%{&ff}→%{strlen(&fenc)?&fenc:'No\ Encoding'}]%=%-16(\ L%l,C%c\ %)%P
let g:Powerline_symbols = 'fancy'

" Speed up viewport scrolling
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" Faster split resizing (+,-)
if bufwinnr(1)
  map + <C-W>+
  map - <C-W>-
endif

" Better split switching (Ctrl-j, Ctrl-k, Ctrl-h, Ctrl-l)
"map <C-j> <C-W>j
"map <C-k> <C-W>k
"map <C-H> <C-W>h
"map <C-L> <C-W>l

" Sudo write (,W)
noremap <leader>W :w !sudo tee %<CR>

" Remap :W to :w
" command W w

" Better mark jumping (line + col)
nnoremap ' `

" Hard to type things
imap >> →
imap << ←
imap ^^ ↑
imap VV ↓
imap aa λ

" Toggle show tabs and trailing spaces (,c)
set lcs=tab:›\ ,trail:·,eol:¬,nbsp:_
set fcs=fold:-
nnoremap <silent> <leader>c :set nolist!<CR>

" Clear last search (,qs)
map <silent> <leader>qs <Esc>:noh<CR>
" map <silent> <leader>qs <Esc>:let @/ = ""<CR>

" Vim on the iPad
if &term == "xterm-ipad"
  nnoremap <Tab> <Esc>
  vnoremap <Tab> <Esc>gV
  onoremap <Tab> <Esc>
  inoremap <Tab> <Esc>`^
  inoremap <Leader><Tab> <Tab>
endif

" Remap keys for auto-completion, disable arrow keys
" I still need these cuz im nub. so nub.
" inoremap <expr>  <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
" inoremap <expr>  <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
" inoremap <expr>  <Down>     pumvisible() ? "\<C-n>" : "\<NOP>"
" inoremap <expr>  <Up>       pumvisible() ? "\<C-p>" : "\<NOP>"
" inoremap <Left>  <NOP>
" inoremap <Right> <NOP>

" Indent/unident block (,]) (,[)
nnoremap <leader>] >i{<CR>
nnoremap <leader>[ <i{<CR>

" Paste toggle (,p)
set pastetoggle=<leader>p
map <leader>p :set invpaste paste?<CR>

" NERD Commenter
let NERDSpaceDelims=1
let NERDCompactSexyComs=1
let g:NERDCustomDelimiters = { 'racket': { 'left': ';', 'leftAlt': '#|', 'rightAlt': '|#' } }

" Buffer navigation (,,) (,]) (,[) (,ls)
map <Leader>, <C-^>
" :map <Leader>] :bnext<CR>
" :map <Leader>[ :bprev<CR>
map <Leader>ls :buffers<CR>

" Close Quickfix window (,qq)
map <leader>qq :cclose<CR>

" Yank from cursor to end of line
nnoremap Y y$

" Insert newline
map <leader><Enter> o<ESC>

" Search and replace word under cursor (,*)
nnoremap <leader>* :%s/\<<C-r><C-w>\>//<Left>

" Strip trailing whitespace (,ss)
function! StripWhitespace ()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    :%s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace ()<CR>

" Save and restore folds
" :au BufWinLeave * mkview
" :au BufWinEnter * silent loadview

" Join lines and restore cursor location (J)
nnoremap J mjJ`j

" Toggle folds (<Space>)
nnoremap <silent> <space> :exe 'silent! normal! '.((foldclosed('.')>0)? 'zMzx' : 'zc')<CR>

" Fix page up and down
map <PageUp> <C-U>
map <PageDown> <C-D>
imap <PageUp> <C-O><C-U>
imap <PageDown> <C-O><C-D>

" Restore cursor position
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif

" Set relative line numbers
"set relativenumber " Use relative line numbers. Current line is still in status bar.
"au BufReadPost,BufNewFile * set relativenumber

" Emulate bundles, allow plugins to live independantly. Easier to manage.
"call pathogen#runtime_append_all_bundles()
"filetype plugin indent on

" JSON
au BufRead,BufNewFile *.json set ft=json syntax=javascript

" Jade
au BufRead,BufNewFile *.jade set ft=jade syntax=jade

" Common Ruby files
au BufRead,BufNewFile Rakefile,Capfile,Gemfile,.autotest,.irbrc,*.treetop,*.tt set ft=ruby syntax=ruby

" Nu
au BufNewFile,BufRead *.nu,*.nujson,Nukefile setf nu

" Coffee Folding
au BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable

" ZSH
au BufRead,BufNewFile .zsh_rc,.functions,.commonrc set ft=zsh

" Clojure.vim
let g:vimclojure#ParenRainbow = 1 " Enable rainbow parens
let g:vimclojure#DynamicHighlighting = 1 " Dynamic highlighting
let g:vimclojure#FuzzyIndent = 1 " Names beginning in 'def' or 'with' to be indented as if they were included in the 'lispwords' option

" Rainbow Parenthesis
nnoremap <leader>rp :RainbowParenthesesToggle<CR>

" Date macro
nnoremap <F5> "=strftime("%a %m.%d.%y (%X)")<CR>P
inoremap <F5> <C-R>=strftime("%a %m.%d.%y (%X)")<CR>

" Vimwiki
let g:vimwiki_list = [{'path': '~/Dropbox/vimwiki/content', 'path_html': '~/Dropbox/vimwiki/html/'}]

" Abbreviations
:vmap <C-c> :s/^/\\\<\C\R\>/<CR>:nohlsearch<CR>
:vmap <C-A-c> :s/\\<CR[>]//<CR>:nohlsearch<CR>

" venus
map <F12> :VenusRun<CR>

" Unite
nnoremap <leader>b :Unite -quick-match buffer<cr>
nnoremap <leader>. :Unite file_rec<cr>
nnoremap <leader>/ :Unite grep:.<cr>
let g:vimfiler_safe_mode_by_default = 0
let g:vimfiler_ignore_pattern = ''

" Unite Ack
command! UniteAckToggleCase :let g:unite_source_ack_ignore_case=!g:unite_source_ack_ignore_case|let g:unite_source_ack_ignore_case
" show executed commmand
let g:unite_source_ack_enable_print_cmd = 1
" define shortcut so that I can use :Unite ack:g:some_method to search some_method from gem directory

function! s:escape_visual(...) "{{{
    let escape = a:0 ? a:1 : ''
    normal `<
    let s = col('.') - 1
    normal `>
    let e = col('.') - 1
    let line = getline('.')
    let pat = line[s : e]
    return escape(pat, escape)
endfunction"}}}
function! s:visual_unite_input() "{{{
    return s:escape_visual(" ")
endfunction"}}}
function! s:visual_unite_arg() "{{{
    return s:escape_visual(' :\')
endfunction"}}}

" unite ack
nnoremap <silent> <Space>a  :<C-u>exe "Unite -buffer-name=ack ack::" . escape(expand('<cword>'),' :\')<CR>
vnoremap <silent> <Space>a  :<C-u>exe "Unite -buffer-name=ack ack::" . <SID>visual_unite_arg()<CR>
nnoremap <silent> <Space>A  :<C-u>UniteResume ack<CR>

command! UniteAckToggleCase :let g:unite_source_ack_ignore_case=!g:unite_source_ack_ignore_case|let g:unite_source_ack_ignore_case

" shortcut
let g:unite_source_ack_targetdir_shortcut = {
            \ 'bundle': '$HOME/.vim/bundle',
            \ 'neco': "$HOME/.vim/bundle/neocomplcache",
            \ 'unite': "$HOME/.vim/bundle/unite.vim",
            \ 'vagrant':  '/var/lib/gems/1.8/gems/vagrant-0.7.5',
            \ 'gem':  '/var/lib/gems/1.8/gems',
            \ 'chef':  '/var/lib/gems/1.8/gems/chef-0.10.0',
            \ 'nova': "$HOME/local/github/openstack/nova-2011.1/nova",
            \ 'bjs': "$BOWIE_HOME/public/javascripts"
            \ }

" set filter to use converter_ack_shortcut to let candidate cosmically
" converted with shortcut
call unite#custom_filters('ack', ['matcher_default', 'sorter_default', 'converter_ack_shortcut'])
" command which use shortcut
command! -nargs=1 SearchBundle :Unite ack:bundle:<args>
command! -nargs=1 SearchGem    :Unite ack:gem:<args>
command! -nargs=1 SearchUnite  :Unite ack:unite:<args>
command! -nargs=1 SearchNeco   :Unite ack:neco:<args>

" fugitive git
nnoremap <Leader>g :Gstatus<CR>

let loaded_matchparen = 1

" turn off syntax highlighting for large files
autocmd BufWinEnter * if line2byte(line("$") + 1) > 1000000 | syntax clear | endif
set guifont=Monaco:h12

" Code folding for JavaScript
function! JavaScriptFold() 
    setl foldmethod=syntax
    setl foldlevelstart=1
    syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

    function! FoldText()
        return substitute(getline(v:foldstart), '{.*', '{...}', '')
    endfunction
    setl foldtext=FoldText()
endfunction
au FileType javascript call JavaScriptFold()
au FileType javascript setl fen

" VIM Buffer Bye mapping
:nnoremap <Leader>q :Bdelete<CR>

" Full screen mode changes
if has("gui_macvim")
  " looks a little better fullscreen
  " set bg=dark

  " remove scroll bars and tool bar
  set guioptions-=r
  set guioptions-=L
  set guioptions-=T

  " nice font if you have it
  set guifont=Anonymous\ Pro:h16

  " expand width in fullscreen 
  " set fuoptions=maxvert,maxhorz

  " hide tab bar
  set showtabline=0

  " hide fold column
  set foldcolumn=0

  " change key bindings
  macm Window.Select\ Previous\ Tab key=<D-Left>
  macm Window.Select\ Next\ Tab key=<D-Right>
  macm Window.Toggle\ Full\ Screen\ Mode key=<D-Return>
endif

" Word processor mode
func! WordProcessorMode() 
  setlocal formatoptions=1 
  setlocal noexpandtab 
  map j gj 
  map k gk
  setlocal spell spelllang=en_us 
  " set thesaurus+=/Users/s/.vim/thesaurus/mthesaur.txt
  set complete+=s
  set formatprg=par
  setlocal wrap 
  setlocal linebreak 
endfu 
com! WP call WordProcessorMode()
