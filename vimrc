"""""""""""""""""""""""""""""""""
"General
"""""""""""""""""""""""""""""""""
set nocompatible                  " We're on vim, not vi
filetype plugin indent on         " indent files, ftplugins

set autoindent
set autoread
set smartindent
"set mouse=a
"Fast saving

nmap <leader>w :w!<cr>
nmap <leader>f :find<cr>

"Fast reloading of the .vimrc
map <leader>s :source ~/.vim/vimrc<cr>
"Fast editing of .vimrc
map <leader>e :e! ~/.vim/vimrc<cr>
"When .vimrc is edited, reload it
autocmd! bufwritepost vimrc source ~/.vim/vimrc

set history=1000                  " Remember more on history
runtime macros/matchit.vim        " Enable matchit
set wildmode=list:longest         " bash like command line tab completion
set wildignore=*.o,*.obj,*~,*.swp " ignore when tab completing:
set backspace=indent,eol,start    " Intuitive backspacing in insert mode
set shortmess=atI
set visualbell                    " get rid of the BEEP
set scrolloff=8                   " Provide three lines of context
set autowrite                     " Automatically save before commands like :next
set showcmd                       " display incomplete commands
set hidden
set lazyredraw " do not redraw, when running macros
set showmode
set wildmenu

set hid " change buffer without saving

nnoremap <C-e> 3<C-e>             " faster scrolling up
nnoremap <C-y> 3<C-y>             " and down


"Some nice mapping to switch syntax (useful if one mixes different languages in one file)
map <leader>1 :set syntax=html<cr>
map <leader>2 :set syntax=xhtml<cr>
map <leader>3 :set ft=javascript<cr>
map <leader>4 :set syntax=php
map <leader>5 :set ft=vim<cr>
map <leader>$ :syntax sync fromstart<cr>
autocmd BufEnter * :syntax sync fromstart

"не загружать NERDSnippets
"let loaded_nerd_snippets_plugin = 1

" set cursorcolumn when editing HAML
"autocmd BufEnter *.haml setlocal cursorcolumn
"autocmd FileType html filetype indent off
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

set shell=/bin/bash
autocmd FileType html source ~/.vim/scripts/sparkup.vim
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags

autocmd FileType php set nu
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType php set nu
autocmd FileType php set foldenable
autocmd FileType php set foldmethod=manual

autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType c set omnifunc=ccomplete#Complete
"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1
set cot+=menuone,preview
"make <c-l> clear the highlight and redraw
nnoremap <C-L> :nohls<CR><C-L>
"in insert mode too
inoremap <C-L> <C-O>:nohls<CR>

map <F2> :mksession! ~/vim_sessions/lastSession <cr> " Quick write session with F2
map <F3> :source ~/vim_sessions/lastSession <cr>     " And load session with F3
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
map <F8> :TlistToggle
" Tell vim to remember certain things when we exit
"  '10 : marks will be remembered for up to 10 previously edited files
"  "100 : will save up to 100 lines for each register
"  :20 : up to 20 lines of command-line history will be remembered
"  % : saves and restores the buffer list
"  n... : where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

set tabstop=4 shiftwidth=4 expandtab " Set 4 space tabs:

" Fix my seplling
if exists("+spelllang")
  set spelllang=en_us,ru,uk
endif

set splitbelow                    " Split windows at bottom
set ttimeoutlen=50                " Speed up <esc>

"Rebuild tags with F5
map <silent> <F5>:!ctags -R --exclude=.svn --exclude=.git --exclude=log *<CR>
set writeany                      " Allow writing readonly files


"""""""""""""""""""""""""""""""""
" Fat fingering stuff...
"""""""""""""""""""""""""""""""""
cabbr Wq  wq                      " write and quit on Wq too
cabbr Wqa wqa                     " useful when accidentally holding the shift key
cabbr W w
imap <F1> <Esc>                   " useful when accidentally hitting F1 when going back to normal mode

"""""""""""""""""""""""""""""""""
" line wrapping and movements
"""""""""""""""""""""""""""""""""
" toggle wrapping with <Leader>w (typically \w)
"nnoremap <silent> <Leader>w :call ToggleWrap()<CR>
"function ToggleWrap()
  "if &wrap
    "echo "Wrap OFF"
    "call UnwrapIt()
  "else
    "echo "Wrap ON"
    "call WrapIt()
  "endif
"endfunction

"function WrapIt()
  "set wrap linebreak
  "set virtualedit=
  "set breakat=\ ^I!@*-+;:,./?       " when wrapping, break at these characters (requires linbreak, see above)
  "set showbreak=>                   " character to show that a line is wrapped
  "setlocal display+=lastline
  "noremap  <buffer> <silent> k gk
  "noremap  <buffer> <silent> j gj
  "noremap  <buffer> <silent> <Up>   gk
  "noremap  <buffer> <silent> <Down> gj
  "noremap  <buffer> <silent> <Home> g<Home>
  "noremap  <buffer> <silent> <End>  g<End>
  "inoremap <buffer> <silent> <Up>   <C-o>gk
  "inoremap <buffer> <silent> <Down> <C-o>gj
  "inoremap <buffer> <silent> <Home> <C-o>g<Home>
  "inoremap <buffer> <silent> <End>  <C-o>g<End>
"endfunction

"function UnwrapIt()
  "set nowrap
  "set virtualedit=all
  "silent! nunmap <buffer> j
  "silent! nunmap <buffer> k
  "silent! nunmap <buffer> <Up>
  "silent! nunmap <buffer> <Down>
  "silent! nunmap <buffer> <Home>
  "silent! nunmap <buffer> <End>
  "silent! iunmap <buffer> <Up>
  "silent! iunmap <buffer> <Down>
  "silent! iunmap <buffer> <Home>
  "silent! iunmap <buffer> <End>
"endfunction

"if &wrap
  "call WrapIt()
"endif

"""""""""""""""""""""""""""""""""
" Backup files
"""""""""""""""""""""""""""""""""
" Use a common directory for backups and swp files
" Create it if it doesn't exist
"silent execute '!mkdir -p ~/.vim_backups'
"set backupdir=~/.vim_backups//
"set directory=~/.vim_backups//
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set noswapfile     "no swap files
"""""""""""""""""""""""""""""""""
" Looks
"""""""""""""""""""""""""""""""""
syntax on                         " syntax highlighting, please
set foldmethod=syntax             " me likes the syntax folding
set foldnestmax=3                 " deepest fold level
set fdl=0

"set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo
set nofoldenable                  " don't fold by default
"set foldcolumn=1
set ruler                         " always show the cursor position"
set showmatch                     " Show matching brackets.
set mat=5                         " Bracket blinking. 
set laststatus=2                  " Always show status line (not only for multiple windows)
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set list                          " show trailing whiteshace and tabs

" Set the search scan to wrap around the file
set wrapscan  
set wrap

" Set the forward slash to be the slash of note.  Backslashes suck
" This is really only applicable to Windows but I like to have a vimrc
" that works no matter what OS I'm currently on
set shellslash

" Make command line two lines high
set ch=2

" set visual bell -- I hate that damned beeping
set vb

" Allow backspacing over indent, eol, and the start of an insert
"set backspace=3
"set cpoptions=ces$
" Set the status line the way I like it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

":colorscheme oceandeep
":colorscheme vividchalk
":colorscheme railscasts
":colorscheme neon
":colorscheme xoria256
":colorscheme darkspectrum
":colorscheme sunburst
":colorscheme wombat
:colorscheme zenburn

set t_Co=256                      " tell the term has 256 colors

if has('gui_running')
  set guioptions-=T              " Remove toolbar and menus in gvim
  set guioptions-=m
  set mousehide                  " Hide mouse after chars typed, only gvim
  set guioptions=+ac
  set cursorline " highlight cursor line
  hi cursorline guibg=#333333
  hi CursorColumn guibg=#333333
"set gfn=Monaco\ 9
"set guifont=ProggyCleanTTSZBP:h12:cDEFAULT
"set guifont=Consolas:h14:cANSI
set gfn=DejaVu\ Sans\ Mono\ 9
"author best =10
"set gfn=Envy\ Code\ R\ Regular\ 11
"set guifont=Neep\ 9
endif

"Omni menu colors
hi Pmenu guibg=#333333
hi PmenuSel guibg=#555555 guifg=#ffffff

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fileformats
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Favorite filetypes
set ffs=unix,dos,mac

nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"""""""""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""""""""
set ignorecase        " search case insensitive
set smartcase         " search case sensitive when term has a capital letter
set hlsearch          " Highlight search terms...
set incsearch         " search dynamically as keyword is typed.

"set magic on
set magic

"No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Moving around and tabs
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Map space to / and c-space to ?
map <space> /
map <c-space> ?

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Autocommands
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Switch to current dir
map <leader>cd :cd %:p:h<cr>

"""""""""""""""""""""""""""""""""
" Plugin customizations
"""""""""""""""""""""""""""""""""
" CamelCaseMotion plugin mappings
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e


" For fuzzy finder/textmate
" Requires fuzzyfinder and fuzzyfinder_textmate plugins
"let g:fuf_enumeratingLimit = 70
"let g:fuf_dir_exclude = '\v(^|[/\\])\.(hg|git|bzr|svn)($|[/\\])'
"map <leader>f :FufFile<CR>
"map <leader>b :FufBuffer<CR>

map <leader>f :FuzzyFinderFile<CR>
map <leader>b :FuzzyFinderBuffer<CR>
" Override mappings for rubytest.vim plugin
"map <unique> <Leader>s <Plug>RubyTestRun
"map <unique> <Leader>S <Plug>RubyFileRun

" Add a todo wiki to Vimwiki
let g:vimwiki_list = [{}, {'path': '~/todo/', 'path_html': '~/todo_html/'}]

"CTags
let g:ctags_statusline=1 " Display function name in status bar
let generate_tags=1 " Automatically start script 
let Tlist_Use_Horiz_Window=0 " Displays taglist results in a vertical window:
" Togle Taglist with TT
nnoremap TT :TlistToggle<CR>
" Various Taglist diplay config
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1

"""""""""""""""""""""""""""""""""
" Other
"""""""""""""""""""""""""""""""""

"define :Lorem command to dump in a paragraph of lorem ipsum
command! -nargs=0 Lorem :normal iLorem ipsum dolor sit amet, consectetur
      \ adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
      \ magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
      \ ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
      \ irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
      \ fugiat nulla pariatur.  Excepteur sint occaecat cupidatat non
      \ proident, sunt in culpa qui officia deserunt mollit anim id est
      \ laborum

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: ,e
map ,e :e <C-R>=expand("%:p:h") . "/" <CR>
 
" Opens a tab edit command with the path of the currently edited file filled in
" Normal mode: ,t
map ,t :tabe <C-R>=expand("%:p:h") . "/" <CR>


"derek wyatt toggling and shorteningo
" Toggle paste mode
nmap  ,p :set invpaste:set paste?

" Turn off that stupid highlight search
nmap  ,n :set invhls:set hls?

" Set text wrapping toggles
nmap  ,w :set invwrap:set wrap?

" Set up retabbing on a source file
nmap  ,rr :1,$retab

" cd to the directory containing the file in the buffer
nmap  ,cd :lcd %:h

" Make the directory that contains the file in the current buffer.
" This is useful when you edit a file in a directory that doesn't
" (yet) existnnmap  ,md :!mkdir -p %:p:h" Opens a split window edit command with the path of the currently edited file
" filled in. Normal mode: ,s
map ,s :split <C-R>=expand("%:p:h") . "/" <CR>


"====================================================================
"
" Move the cursor to the window left of the current one
noremap <silent> ,h :wincmd h<cr>

" Move the cursor to the window below the current one
noremap <silent> ,j :wincmd j<cr>

" Move the cursor to the window above the current one
noremap <silent> ,k :wincmd k<cr>

" Move the cursor to the window right of the current one
noremap <silent> ,l :wincmd l<cr>

" Close the window below this one
"noremap <silent> ,cj :wincmd j<cr>:close<cr>

" Close the window above this one
"noremap <silent> ,ck :wincmd k<cr>:close<cr>

" Close the window to the left of this one
"noremap <silent> ,ch :wincmd h<cr>:close<cr>

" Close the window to the right of this one
"noremap <silent> ,cl :wincmd l<cr>:close<cr>

" Close the current window
"noremap <silent> ,cc :close<cr>

" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L

" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K

" Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H

" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J

set virtualedit=all
set complete=.,w,b,t
set timeoutlen=500


"map <silent> <Leader>cl      :set                  cursorline! <CR>
"imap <silent> <Leader>cl <Esc>:set                  cursorline! <CR>a
 "map <silent> <Leader>cc      :set   cursorcolumn!              <CR>
"imap <silent> <Leader>cc <Esc>:set   cursorcolumn!              <CR>a
 "map <silent> <Leader>ct      :set   cursorcolumn!  cursorline! <CR>
"imap <silent> <Leader>ct <Esc>:set   cursorcolumn!  cursorline! <CR>a
 "map <silent> <Leader>co      :set   cursorcolumn   cursorline  <CR>
"imap <silent> <Leader>co <Esc>:set   cursorcolumn   cursorline  <CR>a
 "map <silent> <Leader>cn      :set nocursorcolumn nocursorline  <CR>
"imap <silent> <Leader>cn <Esc>:set nocursorcolumn nocursorline  <CR>a
"map to bufexplorer
nnoremap <C-B> :BufExplorer<cr>
 
"map to fuzzy finder text mate stylez
"nnoremap <c-f> :FufFile<CR>
nnoremap <c-f> :FuzzyFinderFile<CR>
"nnoremap <c-f> :call FindInNERDTree()<CR>
set novisualbell "Не мигать
set encoding=utf-8
set fileencodings=utf-8,cp1251
"map <C-T> <Esc>:tabnew<CR>
"true=>false if=>else=>elseif yes=>no
imap <C-T> <C-O>:ToggleWord<CR>
nmap <C-T> :ToggleWord<CR>
vmap <C-T> <ESC>:ToggleWord<CR>

" Method 1 (for Xwindows and mswindows), this map is different from the one
" shown in vim documentation:
:noremap <LeftRelease> "+y<LeftRelease>

:nmap ,w :x<CR>
:nmap ,q :q!<CR>

autocmd VimLeavePre * silent mksession! ~/.vim/lastSession.vim

map <leader>t :tabnew<CR>
map <leader>n :tabn<CR>
map <leader>p :tabp<CR>
map <leader>c :tabclose<CR>
"
"NERD Tree
let NERDChristmasTree=1
let NERDTreeAutoCenter=1
let NERDTreeBookmarksFile=$VIM.'\Data\NerdBookmarks.txt'
let NERDTreeMouseMode=2
let NERDTreeShowBookmarks=1
let NERDTreeShowFiles=1
let NERDTreeShowHidden=1
let NERDTreeShowLineNumbers=1
let NERDTreeWinPos='left'
let NERDTreeWinSize=31
map <silent> <leader>v :NERDTreeToggle<CR>
nmap <silent> <Leader>P :Project<CR>

   """"""""""""""""""""""""""""""
   " HTML related
   """"""""""""""""""""""""""""""
   " HTML entities - used by xml edit plugin
   let xml_use_xhtml = 1
   "let xml_no_auto_nesting = 1

   "To HTML
   let html_use_css = 1
   let html_number_lines = 0
   let use_xhtml = 1
