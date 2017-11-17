let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <Nul> <C-Space>
inoremap <expr> <Up> pumvisible() ? "\" : "\<Up>"
inoremap <expr> <S-Tab> pumvisible() ? "\" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? "\" : "\<Down>"
map  :TlistToggle
map  h
map <NL> j
map  k
map  l
map  :NERDTreeToggle
map  <Plug>(ctrlp)
map  :TaskList
map   /
vmap + <Plug>(expand_region_expand)
nmap + <Plug>(expand_region_expand)
nnoremap ,d :YcmShowDetailedDiagnostic
map ,t <Plug>TaskList
nmap ,hp <Plug>GitGutterPreviewHunk
nmap ,hr <Plug>GitGutterUndoHunk:echomsg ',hr is deprecated. Use ,hu'
nmap ,hu <Plug>GitGutterUndoHunk
nmap ,hs <Plug>GitGutterStageHunk
map ,cd :cd %:p:h:pwd
map ,te :tabedit =expand("%:p:h")/
nmap ,tl :exe "tabn ".g:lasttab
map ,t, :tabnext
map ,tm :tabmove
map ,tc :tabclose
map ,to :tabonly
map ,tn :tabnew
map ,h :bprevious
map ,l :bnext
map ,ba :bufdo bd
map ,bd :Bclose:tabclosegT
map <silent> , :noh
nmap ,q :q
nmap ,w :w!
nmap [c <Plug>GitGutterPrevHunk
nnoremap \gr :YcmCompleter GoToReferences
nnoremap \gd :YcmCompleter GoTo
nmap ]c <Plug>GitGutterNextHunk
nmap _ <Plug>(expand_region_shrink)
vmap _ <Plug>(expand_region_shrink)
xmap ac <Plug>GitGutterTextObjectOuterVisual
omap ac <Plug>GitGutterTextObjectOuterPending
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
xmap ic <Plug>GitGutterTextObjectInnerVisual
omap ic <Plug>GitGutterTextObjectInnerPending
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
nnoremap <silent> <Plug>(ale_fix) :ALEFix
nnoremap <silent> <Plug>(ale_detail) :ALEDetail
nnoremap <silent> <Plug>(ale_lint) :ALELint
nnoremap <silent> <Plug>(ale_reset_buffer) :ALEResetBuffer
nnoremap <silent> <Plug>(ale_disable_buffer) :ALEDisableBuffer
nnoremap <silent> <Plug>(ale_enable_buffer) :ALEEnableBuffer
nnoremap <silent> <Plug>(ale_toggle_buffer) :ALEToggleBuffer
nnoremap <silent> <Plug>(ale_reset) :ALEReset
nnoremap <silent> <Plug>(ale_disable) :ALEDisable
nnoremap <silent> <Plug>(ale_enable) :ALEEnable
nnoremap <silent> <Plug>(ale_toggle) :ALEToggle
nnoremap <silent> <Plug>(ale_last) :ALELast
nnoremap <silent> <Plug>(ale_first) :ALEFirst
nnoremap <silent> <Plug>(ale_next_wrap) :ALENextWrap
nnoremap <silent> <Plug>(ale_next) :ALENext
nnoremap <silent> <Plug>(ale_previous_wrap) :ALEPreviousWrap
nnoremap <silent> <Plug>(ale_previous) :ALEPrevious
nnoremap <silent> <Plug>(ctrlp) :CtrlP
xnoremap <silent> <Plug>(expand_region_shrink) :call expand_region#next('v', '-')
xnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('v', '+')
nnoremap <silent> <Plug>(expand_region_expand) :call expand_region#next('n', '+')
nnoremap <SNR>53_: :=v:count ? v:count : ''
nnoremap <silent> <Plug>GitGutterPreviewHunk :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>GitGutterTextObjectOuterVisual :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>GitGutterTextObjectInnerVisual :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>GitGutterTextObjectOuterPending :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>GitGutterTextObjectInnerPending :call gitgutter#hunk#text_object(1)
noremap <Right> <Nop>
noremap <Left> <Nop>
noremap <Down> <Nop>
noremap <Up> <Nop>
map <C-Space> ?
inoremap <expr> 	 pumvisible() ? "\" : "\	"
vnoremap ë :m '<-2gv=gv
vnoremap ê :m '>+1gv=gv
nnoremap ë :m .-2==
nnoremap ê :m .+1==
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autoread
set background=dark
set backspace=eol,start,indent
set balloonexpr=ale#balloon#Expr()
set clipboard=unnamed
set completefunc=youcompleteme#CompleteFunc
set completeopt=preview,menuone
set cpoptions=aAceFsB
set diffopt=filler,vertical
set noequalalways
set expandtab
set fileencodings=ucs-bom,utf-8,default,latin1
set fileformats=unix,dos,mac
set guifont=DroidSansMono\ NF\ 10
set guioptions=aegit
set helplang=pt
set hidden
set history=500
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set listchars=eol:¬,tab:▸⸱,trail:~,extends:>,precedes:<,space:⸱
set matchtime=2
set mouse=a
set ruler
set runtimepath=~/.vim,~/.vim/plugged/landscape.vim/,~/.vim/plugged/vim-gitgutter/,~/.vim/plugged/nerdtree/,~/.vim/plugged/bufexplorer.zip/,~/.vim/plugged/vim-fugitive/,~/.vim/plugged/vim-expand-region/,~/.vim/plugged/ctrlp.vim/,~/.vim/plugged/vim-test/,~/.vim/plugged/editorconfig-vim/,~/.vim/plugged/lightline.vim/,~/.vim/plugged/vim-polyglot/,~/.vim/plugged/YouCompleteMe/,~/.vim/plugged/vim-devicons/,~/.vim/plugged/neoformat/,~/.vim/plugged/ale/,~/.vim/plugged/coverage.vim/,~/.vim/plugged/taglist.vim/,~/.vim/plugged/TaskList.vim/,~/.vim/plugged/minibufexpl.vim/,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after,~/.vim/plugged/vim-polyglot/after,~/.vim/plugged/ale/after,~/.vim/after
set scrolloff=7
set shiftwidth=4
set shortmess=filnxtToOc
set showmatch
set noshowmode
set showtabline=2
set smartcase
set smartindent
set smarttab
set statusline=%#warningmsg#%{SyntasticStatuslineFlag()}%*
set noswapfile
set switchbuf=useopen,usetab,newtab
set tabline=%!lightline#tabline()
set tabstop=4
set termencoding=utf-8
set timeoutlen=500
set undodir=~/.vim_runtime/temp_dirs/undodir
set undofile
set updatetime=1500
set whichwrap=b,s,<,>,h,l
set wildignore=*.o,*~,*.pyc,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,*/plugged/*
set window=57
set nowritebackup
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/.vim
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 config/plugins.vim
badd +0 config/plugin-config.vim
argglobal
silent! argdel *
$argadd config/plugins.vim
$argadd config/plugin-config.vim
edit config/plugins.vim
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=1 winheight=1 winminwidth=1 winwidth=1
argglobal
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf*\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf*\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf*\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
setlocal keymap=
setlocal noarabic
setlocal autoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=
setlocal conceallevel=0
setlocal completefunc=youcompleteme#CompleteFunc
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
set foldcolumn=1
setlocal foldcolumn=1
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal lispwords=
set list
setlocal list
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%{lightline#link()}%#LightlineLeft_active_0#%(\ %{lightline#mode()}\ %)%{(&paste)?\"\":\"\"}%(\ %{&paste?\"PASTE\":\"\"}\ %)%#LightlineLeft_active_0_1#���%#LightlineLeft_active_1#%(\ %{exists(\"*fugitive#head\")\ ?\ \"\"\ .\ fugitive#head()\ :\ \"\"}\ %)%{((exists(\"*fugitive#head\")\ &&\ \"\"\ !=\ fugitive#head()))&&(((&filetype\ !=\ \"help\"\ &&\ &readonly))||1||((&filetype\ !=\ \"help\"\ &&\ (&modified\ ||\ !&modifiable))))?\"\":\"\"}%(\ %{&filetype\ ==\ \"help\"\ ?\ \"\"\ :\ &readonly\ ?\ \"\"\ :\ \"\"}\ %)%{((&filetype\ !=\ \"help\"\ &&\ &readonly))&&(1||((&filetype\ !=\ \"help\"\ &&\ (&modified\ ||\ !&modifiable))))?\"\":\"\"}%(\ %t\ %)%{((&filetype\ !=\ \"help\"\ &&\ (&modified\ ||\ !&modifiable)))?\"\":\"\"}%(\ %{&filetype\ ==\ \"help\"\ ?\ \"\"\ :\ &modified\ ?\ \"���\"\ :\ &modifiable\ ?\ \"\"\ :\ \"-\"}\ %)%#LightlineLeft_active_1_2#���%#LightlineMiddle_active#%=%#LightlineRight_active_3_4#%#LightlineRight_active_3#%(\ %{LightlineFileFormat()}\ %)%{LightlineFileFormat()!=#\"\"&&(LightlineFileEncoding()!=#\"\"||LightlineFileType()!=#\"\")?\"\":\"\"}%(\ %{LightlineFileEncoding()}\ %)%{LightlineFileEncoding()!=#\"\"&&(LightlineFileType()!=#\"\")?\"\":\"\"}%(\ %{LightlineFileType()}\ %)%#LightlineRight_active_2_3#%#LightlineRight_active_2#%(\ %{LightlineBuffer()}\ %)%#LightlineRight_active_1_2#%#LightlineRight_active_1#%(\ %3p%%\ %)%#LightlineRight_active_0_1#%#LightlineRight_active_0#%(\ %3l:%-2v\ %)
setlocal suffixesadd=
setlocal noswapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=4
setlocal tagcase=
setlocal tags=
setlocal termkey=
setlocal termsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal undofile
setlocal undolevels=-123456
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 28) / 56)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 0
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
