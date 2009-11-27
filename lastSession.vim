let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <silent> <expr> <Plug>AcpOnPopupPost acp#onPopupPost()
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
imap <F1>                    " useful when accidentally hitting F1 when going back to normal mode
map! <S-Insert> <MiddleMouse>
nnoremap  :BufExplorer
nnoremap  3             " faster scrolling up
nnoremap  :FuzzyFinderFile
snoremap <silent> 	 i<Right>=TriggerSnippet()
nnoremap  :nohls
vmap  :ToggleWord
nmap  :ToggleWord
snoremap  b<BS>
nnoremap  3             " and down
map   /
snoremap % b<BS>%
snoremap ' b<BS>'
nmap ,ca <Plug>NERDCommenterAltDelims
vmap ,cA <Plug>NERDCommenterAppend
nmap ,cA <Plug>NERDCommenterAppend
vmap ,c$ <Plug>NERDCommenterToEOL
nmap ,c$ <Plug>NERDCommenterToEOL
vmap ,cu <Plug>NERDCommenterUncomment
nmap ,cu <Plug>NERDCommenterUncomment
vmap ,cn <Plug>NERDCommenterNest
nmap ,cn <Plug>NERDCommenterNest
vmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
vmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
vmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
vmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
vmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
vmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
vmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
vmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
nmap ,q :q!
noremap <silent> ,mj J
noremap <silent> ,mh H
noremap <silent> ,mk K
noremap <silent> ,ml L
noremap <silent> ,l :wincmd l
noremap <silent> ,k :wincmd k
noremap <silent> ,j :wincmd j
noremap <silent> ,h :wincmd h
map ,s :split =expand("%:p:h") . "/" 
nmap ,cd :lcd %:h
nmap ,rr :1,$retab
nmap ,w :x
nmap ,n :set invhls:set hls?
nmap ,p :set invpaste:set paste?
map ,t :tabe =expand("%:p:h") . "/" 
map ,e :e =expand("%:p:h") . "/" 
inoremap ï o
noremap RS :call OpenRspecDoc(expand('<cword>'))
noremap RR :call OpenRailsDoc(expand('<cword>'))
noremap RB :call OpenRubyDoc(expand('<cword>'))
xmap S <Plug>VSurround
nnoremap TT :TlistToggle
snoremap U b<BS>U
vmap [% [%m'gv``
snoremap \ b<BS>\
map <silent> \ws <Plug>VimwikiUISelect
map <silent> \wt <Plug>VimwikiTabGoHome
map <silent> \ww <Plug>VimwikiGoHome
nmap <silent> \slr :DBListVar
xmap <silent> \sa :DBVarRangeAssign
nmap <silent> \sap :'<,'>DBVarRangeAssign
nmap <silent> \sal :.,.DBVarRangeAssign
nmap <silent> \sas :1,$DBVarRangeAssign
nmap \so <Plug>DBOrientationToggle
nmap \sh <Plug>DBHistory
nmap \slv <Plug>DBListView
nmap \slp <Plug>DBListProcedure
nmap \slt <Plug>DBListTable
xmap <silent> \slc :exec 'DBListColumn "'.DB_getVisualBlock().'"'
nmap \slc <Plug>DBListColumn
nmap \sbp <Plug>DBPromptForBufferParameters
nmap \sdpa <Plug>DBDescribeProcedureAskName
xmap <silent> \sdp :exec 'DBDescribeProcedure "'.DB_getVisualBlock().'"'
nmap \sdp <Plug>DBDescribeProcedure
nmap \sdta <Plug>DBDescribeTableAskName
xmap <silent> \sdt :exec 'DBDescribeTable "'.DB_getVisualBlock().'"'
nmap \sdt <Plug>DBDescribeTable
xmap <silent> \sT :exec 'DBSelectFromTableTopX "'.DB_getVisualBlock().'"'
nmap \sT <Plug>DBSelectFromTopXTable
nmap \sta <Plug>DBSelectFromTableAskName
nmap \stw <Plug>DBSelectFromTableWithWhere
xmap <silent> \st :exec 'DBSelectFromTable "'.DB_getVisualBlock().'"'
nmap \st <Plug>DBSelectFromTable
nmap <silent> \sep :'<,'>DBExecRangeSQL
nmap <silent> \sel :.,.DBExecRangeSQL
nmap <silent> \sea :1,$DBExecRangeSQL
nmap \sE <Plug>DBExecSQLUnderTopXCursor
nmap \se <Plug>DBExecSQLUnderCursor
xmap \sE <Plug>DBExecVisualTopXSQL
xmap \se <Plug>DBExecVisualSQL
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
nmap <silent> \be :BufExplorer
nnoremap <silent> \bd :Bclose
nmap \ihn :IHN
nmap \is :IHS:A
nmap \ih :IHS
map \tt <Plug>AM_tt
map \tsq <Plug>AM_tsq
map \tsp <Plug>AM_tsp
map \tml <Plug>AM_tml
map \tab <Plug>AM_tab
map \m= <Plug>AM_m=
map \t@ <Plug>AM_t@
map \t~ <Plug>AM_t~
map \t? <Plug>AM_t?
map \w= <Plug>AM_w=
map \ts= <Plug>AM_ts=
map \ts< <Plug>AM_ts<
map \ts; <Plug>AM_ts;
map \ts: <Plug>AM_ts:
map \ts, <Plug>AM_ts,
map \t= <Plug>AM_t=
map \t< <Plug>AM_t<
map \t; <Plug>AM_t;
map \t: <Plug>AM_t:
map \t, <Plug>AM_t,
map \t# <Plug>AM_t#
map \t| <Plug>AM_t|
map \T~ <Plug>AM_T~
map \Tsp <Plug>AM_Tsp
map \Tab <Plug>AM_Tab
map \T@ <Plug>AM_T@
map \T? <Plug>AM_T?
map \T= <Plug>AM_T=
map \T< <Plug>AM_T<
map \T; <Plug>AM_T;
map \T: <Plug>AM_T:
map \Ts, <Plug>AM_Ts,
map \T, <Plug>AM_T,o
map \T# <Plug>AM_T#
map \T| <Plug>AM_T|
map \Htd <Plug>AM_Htd
map \anum <Plug>AM_aunum
map \aunum <Plug>AM_aenum
map \afnc <Plug>AM_afnc
map \adef <Plug>AM_adef
map \adec <Plug>AM_adec
map \ascom <Plug>AM_ascom
map \aocom <Plug>AM_aocom
map \adcom <Plug>AM_adcom
map \acom <Plug>AM_acom
map \abox <Plug>AM_abox
map \a( <Plug>AM_a(
map \a= <Plug>AM_a=
map \a< <Plug>AM_a<
map \a, <Plug>AM_a,
map \a? <Plug>AM_a?
nmap <silent> \P :Project
map <silent> \v :NERDTreeToggle
map \c :echo g:colors_name
map \p :CP
map \n :CN
map \t :tabnew
map \b :FuzzyFinderBuffer
map \cd :cd %:p:h
nmap \fu :se ff=unix
nmap \fd :se ff=dos
map \$ :syntax sync fromstart
map \5 :set ft=vim
map \4 :set syntax=php
map \3 :set ft=javascript
map \2 :set syntax=xhtml
map \1 :set syntax=html
map \e :e! ~/.vim/vimrc
map \s :source ~/.vim/vimrc
map \f :FuzzyFinderFile
nmap \w :w!
vmap ]% ]%m'gv``
snoremap ^ b<BS>^
snoremap ` b<BS>`
vmap a% [%v]%
map <silent> b <Plug>CamelCaseMotion_b
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
map <silent> e <Plug>CamelCaseMotion_e
nmap gx <Plug>NetrwBrowseX
vmap <silent> i,e <Plug>CamelCaseMotion_ie
vmap <silent> i,b <Plug>CamelCaseMotion_ib
vmap <silent> i,w <Plug>CamelCaseMotion_iw
omap <silent> i,e <Plug>CamelCaseMotion_ie
omap <silent> i,b <Plug>CamelCaseMotion_ib
omap <silent> i,w <Plug>CamelCaseMotion_iw
xmap s <Plug>Vsurround
map <silent> w <Plug>CamelCaseMotion_w
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
nmap <SNR>19_WE <Plug>AlignMapsWrapperEnd
map <SNR>19_WS <Plug>AlignMapsWrapperStart
noremap <LeftRelease> "+y<LeftRelease>
map <C-Space> ?
map <silent> <F5>:!ctags -R --exclude=.svn --exclude=.git --exclude=log *
map <F8> :TlistToggle
map <F3> :source ~/vim_sessions/lastSession      " And load session with F3
map <F2> :mksession! ~/vim_sessions/lastSession  " Quick write session with F2
map <S-Insert> <MiddleMouse>
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
inoremap  :nohls
imap  <Plug>DiscretionaryEnd
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap  :ToggleWord
imap  <Plug>AlwaysEnd
imap \ihn :IHN
imap \is :IHS:A
imap \ih :IHS
cabbr W w
cabbr Wqa wqa                     " useful when accidentally holding the shift key
cabbr Wq wq                      " write and quit on Wq too
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set autowrite
set background=dark
set backspace=indent,eol,start
set cmdheight=2
set complete=.,w,b,t
set completeopt=menu,preview,menuone,preview
set expandtab
set fileencodings=utf-8,cp1251
set fileformats=unix,dos,mac
set guifont=DejaVu\ Sans\ Mono\ 9
set guioptions=+ac
set helplang=uk
set hidden
set history=1000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set matchtime=2
set mouse=a
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set scrolloff=8
set sessionoptions=blank,buffers,curdir,folds,globals,help,localoptions,options,resize,tabpages,winsize,winpos
set shell=/bin/bash
set shiftwidth=4
set shortmess=atI
set showcmd
set showmatch
set smartcase
set smartindent
set spelllang=en_us,ru,uk
set splitbelow
set statusline=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set noswapfile
set tabstop=4
set termencoding=utf-8
set timeoutlen=500
set ttimeoutlen=50
set viminfo='10,\"100,:20,%,n~/.viminfo
set virtualedit=all
set whichwrap=b,s,<,>,h,l
set wildignore=*.o,*.obj,*~,*.swp
set wildmenu
set wildmode=list:longest
set writeany
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
let NERDTreeMapPreviewSplit = "gi"
let NERDTreeMapCloseChildren = "X"
let NERDTreeShowHidden =  1 
let MRU_Include_Files = ""
let Tlist_Enable_Fold_Column =  1 
let MRU_Add_Menu =  1 
let NERDSpaceDelims = "0"
let NERDTreeMapCloseDir = "x"
let Grep_Xargs_Path = "xargs"
let MRU_Exclude_Files = ""
let Tlist_Show_One_File =  0 
let Tlist_Auto_Highlight_Tag =  1 
let Grep_Default_Filelist = "*"
let NERDUsePlaceHolders = "1"
let Tlist_Ctags_Cmd = "ctags"
let NERDTreeShowLineNumbers =  1 
let Tlist_Compact_Format =  1 
let Tlist_WinHeight =  10 
let Grep_Find_Path = "find"
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window =  0 
let NERDTreeBookmarksFile = "/usr/share/vim\\Data\\NerdBookmarks.txt"
let NERDTreeMapToggleHidden = "I"
let NERDTreeWinSize =  31 
let CSApprox_loaded =  1 
let NERDTreeSortDirs = "1"
let Grep_Skip_Files = "*~ *,v s.*"
let NERDRemoveExtraSpaces = "1"
let Tlist_Process_File_Always =  0 
let NERDTreeMapPreview = "go"
let Tlist_Use_SingleClick =  0 
let MRU_Max_Entries =  10 
let NERDTreeMapActivateNode = "o"
let NERDTreeWinPos = "left"
let Grep_Find_Use_Xargs =  1 
let TagList_title = "__Tag_List__"
let NERDTreeMapMenu = "m"
let NERDTreeStatusline = "%{exists('b:NERDTreeRoot')?b:NERDTreeRoot.path.str():''}"
let Tlist_Display_Tag_Scope =  1 
let NERDTreeMapOpenInTabSilent = "T"
let NERDTreeMapHelp = "?"
let Grep_Shell_Quote_Char = "'"
let NERDTreeMapJumpParent = "p"
let NERDTreeMapToggleFilters = "f"
let NERDTreeMapJumpPrevSibling = "<C-k>"
let IndSearchUT =  4000 
let NERDTreeShowBookmarks =  1 
let NERDMenuMode = "3"
let NERDDefaultNesting = "1"
let Grep_Null_Device = "/dev/null"
let NERDTreeMapOpenInTab = "t"
let NERDTreeRemoveDirCmd = "rm -rf "
let NERDTreeChDirMode = "0"
let Egrep_Path = "egrep"
let Tlist_Highlight_Tag_On_BufEnter =  1 
let NERDTreeAutoCenterThreshold = "3"
let NERDTreeMapOpenSplit = "i"
let NERDTreeCaseSensitiveSort = "0"
let NERDTreeHijackNetrw = "1"
let Tlist_Max_Submenu_Items =  20 
let NERDTreeMapRefresh = "r"
let NERDTreeHighlightCursorline = "1"
let NERDDelimiterRequests = "1"
let Tlist_GainFocus_On_ToggleOpen =  1 
let NERDLPlace = "[>"
let NERDTreeMouseMode =  2 
let NERDCreateDefaultMappings = "1"
let Tlist_Inc_Winwidth =  1 
let Tlist_Auto_Update =  1 
let Grep_Shell_Escape_Char = "\\"
let MRU_File = "/home/vitaliy/.vim_mru_files"
let NERDChristmasTree =  1 
let Grep_OpenQuickfixWindow =  1 
let NERDTreeNotificationThreshold = "100"
let NERDCommentWholeLinesInVMode = "0"
let Fgrep_Path = "fgrep"
let BufExplorer_title = "[Buf List]"
let NERDTreeMapChdir = "cd"
let NERDRPlace = "<]"
let Tlist_Exit_OnlyWindow =  1 
let NERDTreeMapToggleZoom = "A"
let NERDTreeMapPreviewVSplit = "gs"
let Tlist_Display_Prototype =  0 
let Agrep_Path = "agrep"
let NERDTreeMapRefreshRoot = "R"
let MRU_Window_Height =  8 
let Tlist_Max_Tag_Length =  10 
let NERDRemoveAltComs = "1"
let NERDTreeAutoCenter =  1 
let NERDTreeMapOpenVSplit = "s"
let NERDTreeMapJumpLastChild = "J"
let Tlist_WinWidth =  30 
let NERDTreeMapDeleteBookmark = "D"
let MRU_Auto_Close =  1 
let NERDBlockComIgnoreEmpty = "0"
let Tlist_Close_On_Select =  0 
let NERDTreeMapJumpNextSibling = "<C-j>"
let Tlist_File_Fold_Auto_Close =  1 
let Tlist_Auto_Open =  0 
let NERDTreeMapJumpRoot = "P"
let NERDTreeShowFiles =  1 
let NERDTreeCopyCmd = "cp -r "
let NERDTreeMapQuit = "q"
let NERDTreeMapChangeRoot = "C"
let NERDCompactSexyComs = "0"
let MRU_Use_Current_Window =  0 
let Grep_Path = "grep"
let LargeFile =  20 
let NERDTreeMapToggleFiles = "F"
let NERDAllowAnyVisualDelims = "1"
let NERDTreeMapOpenExpl = "e"
let NERDTreeMapJumpFirstChild = "K"
let Grep_Cygwin_Find =  0 
let Grep_Skip_Dirs = "RCS CVS SCCS"
let NERDTreeMapOpenRecursively = "O"
let NERDTreeMapToggleBookmarks = "B"
let Grep_Default_Options = ""
let NERDTreeMapUpdir = "u"
let NERDTreeMapUpdirKeepOpen = "U"
let NERDTreeQuitOnOpen = "0"
let Tlist_Show_Menu =  0 
let Tlist_Use_Right_Window =  1 
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 .vim/ftplugin/html/sparkup.vim
silent! argdel *
set lines=24 columns=80
winpos 554 339
set splitbelow splitright
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
enew
noremap <buffer> <silent> [" :call search('\%(^\s*<!--.*\n\)\%(^\s*-->\)\@!', "bW")
noremap <buffer> <silent> ]" :call search('^\(\s*<!--.*\n\)\@<!\(\s*-->\)', "W")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=<!--%s-->
setlocal complete=.,w,b,t
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
set nofoldenable
setlocal nofoldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
set foldnestmax=3
setlocal foldnestmax=3
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,58
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
set list
setlocal list
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
setlocal nonumber
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en_us,ru,uk
setlocal statusline=
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=atI
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
