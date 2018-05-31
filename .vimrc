set nocompatible       " vimですよ(最初に書く)
set shellslash          "Windowsのパス用？
filetype plugin indent on     " (5)



set encoding=cp932
"scriptencoding utf-8
scriptencoding cp932



"----------------------------------------------------------------------------------------------------
"
"set encoding=utf-8
"set encoding=utf-8
"set encoding=cp932
"scriptencoding cp932
"scriptencoding utf-8


"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,cp932,utf-8
"set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
"
"-------------------------------------------------------


"キーカスタマイズ
"--------------------
"--------------------------------------------------------------------------------
set winaltkeys=no 


vnoremap <A-/> :s/\\/\//g<CR>
".vimrCを開く
"nnoremap <F2> :e~/.vimrc<CR>
"nnoremap <C-S-v> :e ~/.vimrc<CR>
nnoremap <M-v> :e ~/.vimrc<CR>
nnoremap <M-V> :e ~/_gvimrc<CR>
nnoremap <M-P> :e ~/.vim/rc/dein.toml<CR>

"現在ファイル再読込
nnoremap <M-s> :source%<CR>


<<<<<<< HEAD
"esc��<C-j>�ɂ�����
imap <C-j> <C-[>


""""�C���T�[�g���[�h�؂�ւ�
"imap <C-[> <C-[>  :set imdisable<CR> 
"imap <ESC>  <ESC>:set imdisable<CR>
"imap <C-c>  <C-c>:set imdisable<CR>

"cmap <C-[> <C-[>  :set imdisable<CR> 
"cmap <ESC>  <ESC>:set imdisable<CR>
"cmap <C-c>  <C-c>:set imdisable<CR>


"nnoremap i  :set noimdisable<CR>i
"nnoremap I  :set noimdisable<CR>I
"nnoremap o  :set noimdisable<CR>o
"nnoremap O :set noimdisable<CR>O
"nnoremap a  :set noimdisable<CR>a
"nnoremap A :set noimdisable<CR>A

"nnoremap : :set noimdisable<CR>:
"nnoremap / :set noimdisable<CR>/

"�S�̃C���f���g
map  <M-i> ggvG=
"wM�̓���

""""�C���T�[�g���[�h���ȊO��IME��OFF�ɂ���
"augroup InsModeAu
	"autocmd!
	"autocmd VimEnter * set imdisable
	"autocmd InsertEnter * set noimdisable
	"autocmd CmdwinEnter * set noimdisable
	"autocmd InsertLeave * set imdisable
	"autocmd CmdwinLeave * set imdisable
"augroup END
""""----------------------------------------------------------------------------------------------------

""�C���T�[�g���[�h���ȊO��IME��OFF�ɂ���
"augroup InsModeAu
"autocmd!
"autocmd InsertEnter,CmdwinEnter * set iminsert=2
"autocmd InsertLeave,CmdwinLeave * set iminsert=0
"augroup END
""----------------------------------------------------------------------------------------------------


=======
"wMの動作

"インサートモード時以外はIMEをOFFにする
augroup InsModeAu
    autocmd!
    autocmd InsertEnter,CmdwinEnter * set noimdisable
    autocmd InsertLeave,CmdwinLeave * set imdisable
augroup END
"----------------------------------------------------------------------------------------------------
>>>>>>> bcad8d4328640a74da07122a07673479ddc9dfea

"helpの中のリンクへ移動

"nnoremap <M-j> /|[^ |]\+|<CR>
"nnoremap <M-j> /|[^ |]\+|<CR>
"nnoremap <M-j> let @z=/|[^ |]\+| 









"
"

"----------------------------------------------------------------------------------------------------


"Pythonのパス指定
"let g:python3_host_prog = expand('~/.pyenv/versions/neovim3/bin/python')
let g:python3_host_prog = expand('~/python3')
set runtimepath+=$HOME


"guioptionのトグル
function! ToggleGuiOptions(flag_option)
<<<<<<< HEAD
	if a:flag_option ==? 'T' " �c�[���o�[�̕\��/��\��
		if &guioptions =~# 'T'
			set guioptions-=T
		else
			set guioptions+=T
		endif
	elseif a:flag_option ==? 'm' "���j���[�o�[�̕\��/��\��
		if &guioptions =~# 'm'
			set guioptions-=m
		else
			set guioptions+=m
		endif
	elseif a:flag_option ==? 'r' "�E�X�N���[���o�[�̕\��/��\��
		if &guioptions =~# 'r'
			set guioptions-=r
		else
			set guioptions+=r
		endif
	elseif a:flag_option ==? 'l' "���X�N���[���o�[�̕\��/��\��
		if &guioptions =~# 'l'
			set guioptions-=l
		else
			set guioptions+=l
		endif
	else
		echo 'bad parameter :' . a:flag_option
	endif
=======
  if a:flag_option ==? 'T' " ツールバーの表示/非表示
    if &guioptions =~# 'T'
      set guioptions-=T
    else
      set guioptions+=T
    endif
  elseif a:flag_option ==? 'm' "メニューバーの表示/非表示
    if &guioptions =~# 'm'
      set guioptions-=m
    else
      set guioptions+=m
    endif
  elseif a:flag_option ==? 'r' "右スクロールバーの表示/非表示
    if &guioptions =~# 'r'
      set guioptions-=r
    else
      set guioptions+=r
    endif
  elseif a:flag_option ==? 'l' "左スクロールバーの表示/非表示
    if &guioptions =~# 'l'
      set guioptions-=l
    else
      set guioptions+=l
    endif
  else
    echo 'bad parameter :' . a:flag_option
  endif
>>>>>>> bcad8d4328640a74da07122a07673479ddc9dfea
endfunction



" fullscreen
"-----------------------------------------------------------
nnoremap <F11> :call ToggleFullScreen()<CR>
function! ToggleFullScreen()
	if &guioptions =~# 'C'
		set guioptions-=C
		if exists('s:go_temp')
			if s:go_temp =~# 'm'
				set guioptions+=m
			endif
			if s:go_temp =~# 'T'
				set guioptions+=T
			endif
		endif
		simalt ~r
	else
		let s:go_temp = &guioptions
		set guioptions+=C
		set guioptions-=m
		set guioptions-=T
		simalt ~x
	endif
endfunction
"--------------------------------------------------
if has('kaoriya')
	set iminsert=1 imsearch=0
endif
"--------------------------------------------------

"---------------------------------


"Vim7.3新機能

if has('persistent_undo')
<<<<<<< HEAD
	set undodir=./vimundo,~/vimundo
	augroup vimrC-undofile
		autocmd!
		"~/�ȉ��̃t�@�C���̂ݗL��
		autocmd bufReadPre ~/* setlocal undofile
	augroup END
=======
  set undodir=./vimundo,~/vimundo
  augroup vimrC-undofile
    autocmd!
	"~/以下のファイルのみ有効
    autocmd bufReadPre ~/* setlocal undofile
  augroup END
>>>>>>> bcad8d4328640a74da07122a07673479ddc9dfea
endif

set autochdir
"
"現在のファイル名を挿入
if has('win32')
	nnoremap <silent> gkf :let @*=expand('%:p')<CR>:echo "Copy filename to noname register."<CR>
elseif has('unix')
	nnoremap <silent> gkf :let @"=expand('%:p')<CR>:echo "Copy filename to noname register."<CR>
endif

"現在編集中のバッファのファイル名を変更 
command! -nargs=+ -bang -complete=file Rename let pbnr=fnamey(bufname('%'), ':p')|exec 'f '.escape(<q-args>, ' ')|w<bang>|call delete(pbnr)

"行の"中央に移動
noremap <expr> gm (virtcol('$')/2).'\|'


"-------------------------------------------------------------------------------
"CTRL-A で8進数の計算をさせない
set nrformats-=octal
"-------------------------------------------------------------------------------
"Altキーでメニューを開かない

"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" ステータスライン
set laststatus=2 " 常にステータスラインを表示
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v(ASCII=%03.3b,HEX=%02.2B)\ %l/%L(%P)%m
"コマンドラインの高さ
set cmdheight=1
"-------------------------------------------------------




set noerrorbells
set visualbell
"set viminfo='1000,f1,<500,:100,@100,/50,%


"-------------------------------------------------------------------------------
" 基本設定
" let mapleader = ","            " キーマップリーダー
set scrolloff=5                " スクロール時の余白確保
set textwidth=0                " 一行に長い文章を書いていても自動折り返しをしない
set backupdir=~/vimfiles/backup                 " バックアップ取らない
set autoread                   " 他で書き換えられたら自動で読み直す
set noswapfile                 " スワップファイル作らない
set hidden                     " 編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start " バックスペースでなんでも消せるように
set formatoptions=lmoq         " テキスト整形オプション，マルチバイト系を追加
set vb t_vb=                   " ビープをならさない
set browsedir=buffer           " Exploreの初期ディレクトリ
set whichwrap=b,s,h,l,<,>,[,]  " カーソルを行頭、行末で止まらないようにする


"-------------------------------------------------------------------------------
" 表示
set showmatch         " 括弧の対応をハイライト
set showcmd           " 入力中のコマンドを表示
set number            " 行番号表示
"set list              " 不可視文字表示
set listchars=tab:>.,trail:_,extends:>,precedes:<" 不可視文字の表示形式
set display=uhex      " 印字不可能文字を16進数で表示


" カレントウィンドウにのみ罫線を引く
augroup cch
	autocmd! cch
	autocmd WinLeave * set nocursorline
	autocmd WinEnter,BufRead * set cursorline
augroup END



"-------------------------------------------------------------------------------
" インデント
set autoindent
set smartindent
set cindent
" softtabstopはTabキー押し下げ時の挿入される空白の量，0の場合はtabstopと同じ，BSにも影響する
set tabstop=4 shiftwidth=4 softtabstop=0
set noexpandtab " タブをスペースに展開しない


"-------------------------------------------------------------------------------
" 補完・履歴
set wildmenu           " コマンド補完を強化
set wildchar=<tab>     " コマンド補完を開始するキー
set wildmode=list:full " リスト表示，最長マッチ
set history=1000       " コマンド・検索パターンの履歴数
set complete+=k        " 補完に辞書ファイル追加


"-------------------------------------------------------------------------------
" 検索設定
set wrapscan   " 最後まで検索したら先頭へ戻る
set ignorecase " 大文字小文字無視
set smartcase  " 大文字ではじめたら大文字小文字無視しない
set incsearch  " インクリメンタルサーチ
set hlsearch   " 検索文字をハイライト

"選択した文字列を検索
vnoremap <silent> // y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
"選択した文字列を置換
vnoremap /r "xy:%s/<C-R>=escape(@x, '\\/.*$^~[]')<CR>//gc<Left><Left><Left>


" 検索などで飛んだらそこを真ん中に
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
nmap G Gzz

"シェルをPowerShellに
set shell=powershell.exe"
"set shell=cmd.exe






" プラグイン関係
"dein
"----------------------------------------------------------------------------------------------------

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
<<<<<<< HEAD
	call dein#begin(s:dein_dir)

	" �v���O�C�����X�g�����߂� TOML �t�@�C��
	" �\�� TOML �t�@�C���i��q�j��p�ӂ��Ă���
	let g:rc_dir    = expand('~/.vim/rc')
	let s:toml      = g:rc_dir . '/dein.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

	" TOML ��ǂݍ��݁A�L���b�V�����Ă���
	call dein#load_toml(s:toml,      {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})

	" �ݒ�I��
	call dein#end()
	call dein#save_state()

=======
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
 
>>>>>>> bcad8d4328640a74da07122a07673479ddc9dfea
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
	call dein#install()
endif
"----------------------------------------------------------------------------------------------------

"Denite
"キーマップ
nnoremap <M-b> :Denite  -mode=normal buffer<CR>
nnoremap <M-f> :Denite  -mode=normal file/old<CR>
nnoremap <M-F> :Denite  -mode=normal file_mru<CR>
nnoremap <M-y> :Denite  -mode=normal neoyank<CR>
" カラースキームの切り替えを簡単にする
" http://inputxoutput.com/vim-advent-calendar-2012/
nnoremap <Leader>dc :Denite -auto-preview  colorscheme<CR>
"----------------------------------------------------------------------------------------------------
"
"タブを切り替え可能に
"noremap=<C-p> :tablast
"noremap=<C-n> :tabNext


"タブ関係
" Anywhere SID.
function! s:SID_PREFIX()
	return matchstr(expand('<sfile>'), '<SNR>\d\+_\zeSID_PREFIX$')
endfunction

" Set tabline.
function! s:my_tabline()  "{{{
	let s = ''
	for i in range(1, tabpagenr('$'))
		let bufnrs = tabpagebuflist(i)
		let bufnr = bufnrs[tabpagewinnr(i) - 1]  " first window, first appears
		let no = i  " display 0-origin tabpagenr.
		let mod = getbufvar(bufnr, '&modified') ? '!' : ' '
		let title = fnamemodify(bufname(bufnr), ':t')
		let title = '[' . title . ']'
		let s .= '%'.i.'T'
		let s .= '%#' . (i == tabpagenr() ? 'TabLineSel' : 'TabLine') . '#'
		let s .= no . ':' . title
		let s .= mod
		let s .= '%#TabLineFill# '
	endfor
	let s .= '%#TabLineFill#%T%=%#TabLine#'
	return s
endfunction "}}}
let &tabline = '%!'. s:SID_PREFIX() . 'my_tabline()'
set showtabline=2 " 常にタブラインを表示

"vim-airline
" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
	execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc 新しいタブを一番右に作る
map <silent> [Tag]x :tabclose<CR>
" tx タブを閉じる
map <silent> [Tag]n :tabnext<CR>
" tn 次のタブ
map <silent> [Tag]p :tabprevious<CR>
" tp 前のタブ
"----------------------------------------------------------------------------------------------------
"
let g:airline#extensions#tabline#buffer_idx_mode = 1 "タブに番号を表示する
let g:airline#extensions#tabline#enabled = 1
"----------------------------------------------------------------------------------------------------
"
syntax enable


"----------------------------------------------------------------------------------------------------

