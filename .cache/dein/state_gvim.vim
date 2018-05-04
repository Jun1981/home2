if g:dein#_cache_version !=# 100 || g:dein#_init_runtimepath !=# 'I:/home2/.cache/dein/repos/github.com/Shougo/dein.vim/,I:\home2/vimfiles,I:\Home2\vim80-kaoriya-win64/vimfiles,I:\Home2\vim80-kaoriya-win64\vim80,I:\Home2\vim80-kaoriya-win64/vimfiles/after,I:\home2/vimfiles/after,I:\Home2\vim80-kaoriya-win64\plugins\autofmt,I:\Home2\vim80-kaoriya-win64\plugins\golang,I:\Home2\vim80-kaoriya-win64\plugins\kaoriya,I:\Home2\vim80-kaoriya-win64\plugins\vimdoc-ja,I:\Home2\vim80-kaoriya-win64\plugins\vimproc' | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['I:/home2/.vimrc', 'I:/home2/.vim/rc/dein.toml', 'I:/home2/.vim/rc/dein_lazy.toml'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = 'I:/home2/.cache/dein'
let g:dein#_runtime_path = 'I:/home2/.cache/dein/.cache/.vimrc/.dein'
let g:dein#_cache_path = 'I:/home2/.cache/dein/.cache/.vimrc'
let &runtimepath = 'I:/home2/.cache/dein/repos/github.com/Shougo/dein.vim/,I:\home2/vimfiles,I:\Home2\vim80-kaoriya-win64/vimfiles,I:/home2/.cache/dein/repos/github.com/Shougo/dein.vim,I:/home2/.cache/dein/.cache/.vimrc/.dein,I:\Home2\vim80-kaoriya-win64\vim80,I:/home2/.cache/dein/.cache/.vimrc/.dein/after,I:\Home2\vim80-kaoriya-win64/vimfiles/after,I:\home2/vimfiles/after,I:\Home2\vim80-kaoriya-win64\plugins\autofmt,I:\Home2\vim80-kaoriya-win64\plugins\golang,I:\Home2\vim80-kaoriya-win64\plugins\kaoriya,I:\Home2\vim80-kaoriya-win64\plugins\vimdoc-ja,I:\Home2\vim80-kaoriya-win64\plugins\vimproc'
filetype off
