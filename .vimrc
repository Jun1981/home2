set nocompatible       " vim�ł���(�ŏ��ɏ���)
set shellslash          "Windows�̃p�X�p�H
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


"�L�[�J�X�^�}�C�Y
"--------------------
"--------------------------------------------------------------------------------
set winaltkeys=no 


vnoremap <A-/> :s/\\/\//g<CR>
".vimrC���J��
"nnoremap <F2> :e~/.vimrc<CR>
"nnoremap <C-S-v> :e ~/.vimrc<CR>
nnoremap <M-v> :e ~/.vimrc<CR>
nnoremap <M-V> :e ~/_gvimrc<CR>
"���݃t�@�C���ēǍ�
nnoremap <M-s> :source%<CR>
noremap<ESC> <ESC><ESC>
noremap <C-[> <C-[><C-[>


"IM�̓���

inoremap <ESC>  <ESC>:set iminsert=0<CR>
inoremap <C-[>  <C-[>:set iminsert=0<CR>

"----------------------------------------------------------------------------------------------------

"help�̒��̃����N�ֈړ�

"nnoremap <M-j> /|[^ |]\+|<CR>
"nnoremap <M-j> /|[^ |]\+|<CR>
"nnoremap <M-j> let @z=/|[^ |]\+| 

"
"

"----------------------------------------------------------------------------------------------------


"Python�̃p�X�w��
"let g:python3_host_prog = expand('~/.pyenv/versions/neovim3/bin/python')
let g:python3_host_prog = expand('~/python3')
set runtimepath+=$HOME


"guioption�̃g�O��
function! ToggleGuiOptions(flag_option)
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


"Vim7.3�V�@�\

if has('persistent_undo')
  set undodir=./vimundo,~/vimundo
  augroup vimrC-undofile
    autocmd!
	"~/�ȉ��̃t�@�C���̂ݗL��
    autocmd bufReadPre ~/* setlocal undofile
  augroup END
endif

set autochdir
"
"���݂̃t�@�C������}��
if has('win32')
nnoremap <silent> gkf :let @*=expand('%:p')<CR>:echo "Copy filename to noname register."<CR>
elseif has('unix')
nnoremap <silent> gkf :let @"=expand('%:p')<CR>:echo "Copy filename to noname register."<CR>
endif

"���ݕҏW���̃o�b�t�@�̃t�@�C������ύX 
command! -nargs=+ -bang -complete=file Rename let pbnr=fnamey(bufname('%'), ':p')|exec 'f '.escape(<q-args>, ' ')|w<bang>|call delete(pbnr)

"�s��"�����Ɉړ�
noremap <expr> gm (virtcol('$')/2).'\|'


"-------------------------------------------------------------------------------
"CTRL-A ��8�i���̌v�Z�������Ȃ�
set nrformats-=octal
"-------------------------------------------------------------------------------
"Alt�L�[�Ń��j���[���J���Ȃ�

"-------------------------------------------------------------------------------

"-------------------------------------------------------------------------------
" �X�e�[�^�X���C��
set laststatus=2 " ��ɃX�e�[�^�X���C����\��
set statusline=%<%F\ %r%h%w%y%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%4v(ASCII=%03.3b,HEX=%02.2B)\ %l/%L(%P)%m
"�R�}���h���C���̍���
set cmdheight=1
"-------------------------------------------------------




set noerrorbells
set visualbell
"set viminfo='1000,f1,<500,:100,@100,/50,%


"-------------------------------------------------------------------------------
" ��{�ݒ�
" let mapleader = ","            " �L�[�}�b�v���[�_�[
set scrolloff=5                " �X�N���[�����̗]���m��
set textwidth=0                " ��s�ɒ������͂������Ă��Ă������܂�Ԃ������Ȃ�
set backupdir=~/vimfiles/backup                 " �o�b�N�A�b�v���Ȃ�
set autoread                   " ���ŏ���������ꂽ�玩���œǂݒ���
set noswapfile                 " �X���b�v�t�@�C�����Ȃ�
set hidden                     " �ҏW���ł����̃t�@�C�����J����悤�ɂ���
set backspace=indent,eol,start " �o�b�N�X�y�[�X�łȂ�ł�������悤��
set formatoptions=lmoq         " �e�L�X�g���`�I�v�V�����C�}���`�o�C�g�n��ǉ�
set vb t_vb=                   " �r�[�v���Ȃ炳�Ȃ�
set browsedir=buffer           " Explore�̏����f�B���N�g��
set whichwrap=b,s,h,l,<,>,[,]  " �J�[�\�����s���A�s���Ŏ~�܂�Ȃ��悤�ɂ���


"-------------------------------------------------------------------------------
" �\��
set showmatch         " ���ʂ̑Ή����n�C���C�g
set showcmd           " ���͒��̃R�}���h��\��
set number            " �s�ԍ��\��
"set list              " �s�������\��
set listchars=tab:>.,trail:_,extends:>,precedes:<" �s�������̕\���`��
set display=uhex      " �󎚕s�\������16�i���ŕ\��


" �J�����g�E�B���h�E�ɂ̂݌r��������
augroup cch
autocmd! cch
autocmd WinLeave * set nocursorline
autocmd WinEnter,BufRead * set cursorline
augroup END



"-------------------------------------------------------------------------------
" �C���f���g
set autoindent
set smartindent
set cindent
" softtabstop��Tab�L�[�����������̑}�������󔒂̗ʁC0�̏ꍇ��tabstop�Ɠ����CBS�ɂ��e������
set tabstop=4 shiftwidth=4 softtabstop=0
set noexpandtab " �^�u���X�y�[�X�ɓW�J���Ȃ�


"-------------------------------------------------------------------------------
" �⊮�E����
set wildmenu           " �R�}���h�⊮������
set wildchar=<tab>     " �R�}���h�⊮���J�n����L�[
set wildmode=list:full " ���X�g�\���C�Œ��}�b�`
set history=1000       " �R�}���h�E�����p�^�[���̗���
set complete+=k        " �⊮�Ɏ����t�@�C���ǉ�


"-------------------------------------------------------------------------------
" �����ݒ�
set wrapscan   " �Ō�܂Ō���������擪�֖߂�
set ignorecase " �啶������������
set smartcase  " �啶���ł͂��߂���啶���������������Ȃ�
set incsearch  " �C���N�������^���T�[�`
set hlsearch   " �����������n�C���C�g

"�I�����������������
vnoremap <silent> // y/<C-R>=escape(@", '\\/.*$^~[]')<CR><CR>
"�I�������������u��
vnoremap /r "xy:%s/<C-R>=escape(@x, '\\/.*$^~[]')<CR>//gc<Left><Left><Left>


" �����ȂǂŔ�񂾂炻����^�񒆂�
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz
nmap G Gzz

"�V�F����PowerShell��
set shell=powershell.exe"
"set shell=cmd.exe






" �v���O�C���֌W
"dein
"----------------------------------------------------------------------------------------------------

" �v���O�C�������ۂɃC���X�g�[�������f�B���N�g��
let s:dein_dir = expand('~/.cache/dein')
" dein.vim �{��
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim ���Ȃ���� github ���痎�Ƃ��Ă���
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" �ݒ�J�n
if dein#load_state(s:dein_dir)
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
 
endif

" �����A���C���X�g�[�����̂��̂���������C���X�g�[��
if dein#check_install()
  call dein#install()
endif
"----------------------------------------------------------------------------------------------------

"Denite
"�L�[�}�b�v
nnoremap <M-b> :Denite -auto_preview -mode=normal buffer<CR>
nnoremap <M-f> :Denite -auto_preview -mode=normal file/old<CR>
nnoremap <M-F> :Denite -auto_preview -mode=normal file_mru<CR>
nnoremap <M-y> :Denite -auto_preview -mode=normal neoyank<CR>
" �J���[�X�L�[���̐؂�ւ����ȒP�ɂ���
" http://inputxoutput.com/vim-advent-calendar-2012/
nnoremap <Leader>dc :Denite -auto-preview  colorscheme<CR>
"----------------------------------------------------------------------------------------------------
"
"�^�u��؂�ւ��\��
"noremap=<C-p> :tablast
"noremap=<C-n> :tabNext


"�^�u�֌W
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
set showtabline=2 " ��Ƀ^�u���C����\��

" The prefix key.
nnoremap    [Tag]   <Nop>
nmap    t [Tag]
" Tab jump
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
" t1 ��1�ԍ��̃^�u�At2 ��1�ԍ�����2�Ԗڂ̃^�u�ɃW�����v

map <silent> [Tag]c :tablast <bar> tabnew<CR>
" tc �V�����^�u����ԉE�ɍ��
map <silent> [Tag]x :tabclose<CR>
" tx �^�u�����
map <silent> [Tag]n :tabnext<CR>
" tn ���̃^�u
map <silent> [Tag]p :tabprevious<CR>
" tp �O�̃^�u
"----------------------------------------------------------------------------------------------------
"
"
"
"
"vim-airline
let g:airline#extensions#tabline#enabled = 1
"----------------------------------------------------------------------------------------------------
"
"�J���[�ݒ�
let g:airline_theme = 'molokai'
let g:molokai_original = 1
"�Ō�ɏ���
syntax enable


"----------------------------------------------------------------------------------------------------


