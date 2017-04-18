"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""
" => Plug Vundle 
""""""""""""""""""""""""""""""
call plug#begin('~/.vim_runtime/plugged')
" For coding
Plug 'VundleVim/Vundle.vim'
function! BuildYCM(info)
    " info is a dictionary with 3 fields
    " - name:   name of the plugin
    " - status: 'installed', 'updated', or 'unchanged'
    " - force:  set on PlugInstall! or PlugUpdate!
    if a:info.status == 'installed' || a:info.force || a.info.status == 'update'
        !git submodule update --init --recursive
        !./install.py --clang-completer --gocode-completer --tern-completer
    endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Valloric/ListToggle'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'vim-scripts/taglist.vim'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/indexer.tar.gz'
Plug 'rhysd/vim-clang-format'
Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-scripts/vimprj'
Plug 'vim-scripts/a.vim'
Plug 'majutsushi/tagbar'
Plug 'Mizuchi/STL-Syntax'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/Conque-GDB'
" Plug 'vim-scripts/OmniCppComplete'
" Plug 'gilligan/vim-lldb'
" Plug 'rhysd/8cc.vim'
" Plug 'realincubus/vim-clang-refactor'
" Plug 'w0rp/ale'
" Plug 'FSwitch'
Plug 'scrooloose/snipmate-snippets'
Plug 'garbas/vim-snipmate'

" VimL Lib
" Plug 'kana/vim-operator-user'
Plug 'vim-scripts/DfrankUtil'
Plug 'xolox/vim-misc'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'vim-scripts/tlib'

" System language
Plug 'nickhutchinson/vim-systemtap'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/conflict-marker.vim'
" Plug 'TimothyYe/vim-tips'

" Font and Corlor and Theme
Plug 'powerline/fonts'
Plug 'luochen1990/rainbow'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'google/vim-colorscheme-primary'
" Plug 'flazz/vim-colorschemes'
" Plug 'colepeters/spacemacs-theme.vim'
" Plug 'liuchengxu/space-vim-dark'
" Plug 'dracula/vim'
Plug 'vim-scripts/mayansmoke'
Plug 'therubymug/vim-pyte'
Plug 'itchyny/lightline.vim'
Plug 'vim-scripts/peaksea'

" Man
Plug 'jez/vim-superman'
Plug 'nhooyr/neoman.vim'

" Markdown
Plug 'tpope/vim-markdown'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

"Edit and Effectiveness
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kshenoy/vim-signature'
Plug 'kien/ctrlp.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/TaskList.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-scripts/ZoomWin'
Plug 'mileszs/ack.vim'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'vim-scripts/YankRing.vim'
Plug 'sjl/gundo.vim'
Plug 'google/vim-searchindex'
Plug 'nelstrom/vim-qargs'
Plug 'lfv89/vim-interestingwords'
Plug 'xolox/vim-session'
Plug 'tacahiroy/ctrlp-funky'
Plug 'lifepillar/vim-cheat40'
Plug 'godlygeek/tabular'
Plug 'mhinz/vim-startify'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'vim-scripts/matchit.zip'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'osyo-manga/vim-over'
Plug 'gcmt/wildfire.vim'
" Plug 'Raimondi/delimitMate'
" Plug 'vim-scripts/sessionman.vim'
" Plug 'junegunn/vim-easy-align'
" Plug 'rhysd/clever-f.vim'
" Plug 'lukhio/vim-mapping-conflicts'
" Plug 'mhinz/vim-signify'
Plug 'corntrace/bufexplorer'
Plug 'amix/open_file_under_cursor.vim'
Plug 'vim-scripts/tlib'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'sophacles/vim-bundle-mako'
Plug 'kchmck/vim-coffee-script'
Plug 'michaeljsmith/vim-indent-object'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-commentary'
Plug 'morhetz/gruvbox'
Plug 'digitaltoad/vim-pug'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'MarcWeber/vim-addon-mw-utils'

" Ttmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'

" Haskell
Plug 'eagletmt/ghcmod-vim'
Plug 'neovimhaskell/haskell-vim'

"Python
Plug 'davidhalter/jedi-vim'
Plug 'klen/python-mode', { 'branch': 'master' }
Plug 'fs111/pydoc.vim'
Plug 'hdima/python-syntax'
Plug 'python.vim'
Plug 'xolox/vim-pyref'
"Plug 'nvie/vim-flake8'
"Plug 'kevinw/pyflakes-vim'
"Plug 'cburroughs/pep8.py'
"Plug 'hynek/vim-python-pep8-indent'
"Plug 'vim-scripts/indentpython.vim'

" Php
Plug 'spf13/PIV'
Plug 'shawncplus/phpcomplete.vim'
Plug 'joonty/vdebug'

" Web
Plug 'groenewege/vim-less'
Plug 'vim-scripts/httplog'
Plug 'mattn/emmet-vim'
Plug 'evanmiller/nginx-vim-syntax'

" Json
Plug 'elzr/vim-json'

" Javascript
Plug 'marijnh/tern_for_vim'

" Java
"Plug 'mikelue/vim-maven-plugin'
Plug 'artur-shaik/vim-javacomplete2'

" Shell
Plug 'oplatek/Conque-Shell'
Plug 'Shougo/vimshell.vim'

" Protobuf
Plug 'uarun/vim-protobuf'

" Pdf
Plug 'rhysd/open-pdf.vim'

"Refactor c++
"Plug 'LucHermitte/lh-vim-lib'
"Plug 'LucHermitte/lh-tags'
"Plug 'LucHermitte/lh-dev'
"Plug 'LucHermitte/lh-brackets'
"Plug 'LucHermitte/searchInRuntime'
"Plug 'LucHermitte/mu-template'
"Plug 'tomtom/stakeholders_vim'
"Plug 'LucHermitte/lh-cpp'
"Plug 'LucHermitte/vim-refactor'
call plug#end()

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
let g:bufExplorerDefaultHelp=0
let g:bufExplorerShowRelativePath=1
let g:bufExplorerFindActive=1
let g:bufExplorerSortBy='name'
map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
let MRU_Max_Entries = 400
map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-P> <Plug>yankstack_substitute_newer_paste


""""""""""""""""""""""""""""""
" => CTRL-P
""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = 0

let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
" map <c-b> :CtrlPBuffer<cr>

let g:ctrlp_max_height = 20
let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'


""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
ino <c-j> <c-r>=snipMate#TriggerSnippet()<cr>
snor <c-j> <esc>i<right><c-r>=snipMate#TriggerSnippet()<cr>


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "right"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_next_key="\<C-s>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
let g:syntastic_python_checkers=['pyflakes']

" Javascript
let g:syntastic_javascript_checkers = ['jshint']

" Go
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']

" Custom CoffeeScript SyntasticCheck
func! SyntasticCheckCoffeescript()
    let l:filename = substitute(expand("%:p"), '\(\w\+\)\.coffee', '.coffee.\1.js', '')
    execute "tabedit " . l:filename
    execute "SyntasticCheck"
    execute "Errors"
endfunc
nnoremap <silent> <leader>c :call SyntasticCheckCoffeescript()<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>
