"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requries that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plug Vundle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim_runtime/plugged')
" VimL Lib
Plug 'vim-scripts/DfrankUtil'
Plug 'xolox/vim-misc'
Plug 'vim-scripts/tlib'
Plug 'vim-scripts/vimprj'

" Man
Plug 'nhooyr/neoman.vim'

" Font and Corlor and Theme
Plug 'powerline/fonts'
Plug 'luochen1990/rainbow'
Plug 'tomasr/molokai'
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" General
Plug 'lifepillar/vim-cheat40'
Plug 'tpope/vim-repeat'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'kshenoy/vim-signature'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-multiple-cursors'
Plug 'mileszs/ack.vim'
Plug 'sjl/gundo.vim'
Plug 'google/vim-searchindex'
Plug 'nelstrom/vim-qargs'
Plug 'lfv89/vim-interestingwords'
Plug 'xolox/vim-session'
Plug 'godlygeek/tabular'
Plug 'vim-scripts/matchit.zip'
Plug 'osyo-manga/vim-over'
Plug 'gcmt/wildfire.vim'
Plug 'mhinz/vim-startify'
Plug 'corntrace/bufexplorer'
Plug 'amix/open_file_under_cursor.vim'
Plug 'junegunn/goyo.vim'
Plug 'amix/vim-zenroom2'
Plug 'terryma/vim-expand-region'
Plug 'tpope/vim-commentary'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'vim-scripts/YankRing.vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'yegappan/mru'

" Program
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --gocode-completer --tern-completer' }
Plug 'fatih/vim-go', { 'do': ':GoInstallBinaries' }
Plug 'Valloric/ListToggle'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'vim-scripts/taglist.vim'
Plug 'vim-scripts/indexer.tar.gz'
Plug 'rhysd/vim-clang-format'
Plug 'vim-scripts/a.vim'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/Conque-GDB'
Plug 'Mizuchi/STL-Syntax'
Plug 'octol/vim-cpp-enhanced-highlight'

" Snip
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rhysd/conflict-marker.vim'

" Shell
Plug 'oplatek/Conque-Shell'

" Ttmux
Plug 'christoomey/vim-tmux-navigator'
Plug 'tmux-plugins/vim-tmux'

" Vim script
Plug 'kchmck/vim-coffee-script'
Plug 'digitaltoad/vim-pug'

" System language
Plug 'nickhutchinson/vim-systemtap'

" Haskell
Plug 'eagletmt/ghcmod-vim'
Plug 'neovimhaskell/haskell-vim'

" Python
Plug 'davidhalter/jedi-vim'
Plug 'klen/python-mode', { 'branch': 'master' }
Plug 'fs111/pydoc.vim'
Plug 'hdima/python-syntax'
Plug 'python.vim'
Plug 'xolox/vim-pyref'

" Php
Plug 'spf13/PIV'
Plug 'shawncplus/phpcomplete.vim'
Plug 'joonty/vdebug'

"Html
Plug 'groenewege/vim-less'
Plug 'mattn/emmet-vim'

" Nginx
Plug 'evanmiller/nginx-vim-syntax'
Plug 'vim-scripts/httplog'

" Json
Plug 'elzr/vim-json'

" Javascript
Plug 'marijnh/tern_for_vim'

" Java
Plug 'artur-shaik/vim-javacomplete2'

" Protobuf
Plug 'uarun/vim-protobuf'

call plug#end()

""""""""""""""""""""""""""""""
" => Molokai
""""""""""""""""""""""""""""""
let g:molokai_original=1
let g:rehash256 = 1

""""""""""""""""""""""""""""""
" => Solarized 
""""""""""""""""""""""""""""""
let g:solarized_termcolors=     256
let g:solarized_termtrans =     1
let g:solarized_degrade   =     1
let g:solarized_bold      =     0
let g:solarized_underline =     0
let g:solarized_italic    =     0
let g:solarized_contrast  =     "high"
let g:solarized_visibility=     "high"
let g:solarized_hitrail   =     1
let g:solarized_menu      =     0

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
" => ZenCoding(Emmit)
""""""""""""""""""""""""""""""
" Enable all functions in all modes
let g:user_zen_mode='a'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext http://amix.dk/blog/post/19678
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
vmap Si S(i_<esc>f)
au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:goyo_width=100
let g:goyo_margin_top = 2
let g:goyo_margin_bottom = 2
nnoremap <silent> <leader>z :Goyo<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=1
nnoremap <silent> <leader>d :GitGutterToggle<cr>
let g:gitgutter_max_signs=500  " default value

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Taglist
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Ctags_Cmd='/usr/bin/ctags -R'
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 30
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File =1
let Tlist_Sort_Type = "order"
let Tlist_WinWidth = 30
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("cscope")
    set csprg=/usr/bin/cscope
    set csto=1
    set cst
    set nocsverb
    " add any database in current directory
    if filereadable("cscope.out")
        cs add cscope.out
    endif
    set csverb
endif

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Generate file for ctags and cscope
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F6> :call Do_CsTag()<cr>
function! Do_CsTag()
    let dir = getcwd()

    if(executable('ctags'))
        silent! execute "!ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q"
    endif
    if(executable('cscope') && has("cscope") )
        silent! execute "!find . -iname '*.[ch]' -o -name '*.cpp' -o -name '*.cc' -o -name '*.ipp' -o -name '*.hpp' -o -name '*.php'"> cscope.files"
        silent! execute "!cscope -b"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
    " refresh screen
    execute "redr!"
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
let g:syntastic_enable_balloons = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_python_flake8_args = '--max-line-length=80 ' .
            \ '--max-complexity=10 --ignore=E111,E114,E121,E125,E126,E127,E128,E129,' .
            \ 'E131,E133,E201,E202,E203,E211,E221,E222,E241,E251,E261,E303,E402,W503'

let g:syntastic_mode_map = {
            \ "mode": "active",
            \ "active_filetypes": [],
            \ "passive_filetypes": ["dart", "html"] }
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
" => Ycm
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <leader>gi :YcmCompleter GoToInclude<CR>
nnoremap <leader>ge :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>go :YcmCompleter GoTo<CR>
nnoremap <leader>gr :YcmCompleter GogoReferences<CR>
nnoremap <leader>gw :YcmCompleter GetDoc<CR>
nnoremap <leader>ga :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>gp :YcmCompleter GetParent<CR>
nnoremap <leader>gt :YcmCompleter GetType<CR>
nnoremap <leader>gz :YcmCompleter ClearCompilationFlagCache<CR>
nnoremap <leader>gf :YcmForceCompileAndDiagnostics <CR>
nnoremap <leader>gx :YcmCompleter FixIt<CR>
nnoremap <leader>gc :YcmDiags<CR>

let g:ycm_global_ycm_extra_conf = '~/.vim_runtime/plugged/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_min_num_identifier_candidate_chars = 4
let g:ycm_extra_conf_globlist = ['~/repos/*']
let g:acp_enableAtStartup = 0
let g:ycm_collect_identifiers_from_tags_files = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Indexer
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indexer_ctagsCommandLineOptions="--c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+iaSl --extra=+q "

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vdebug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vdebug_options = {'break_on_open': 1, 'port' : 9090, 'server' : '127.0.0.1'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gdb
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ConqueGdb_Leader = ";"
let g:ConqueTerm_Color = 2         " 1: strip color after 200 lines, 2: always with color
let g:ConqueTerm_CloseOnEnd = 1    " close conque when program ends running
let g:ConqueTerm_StartMessages = 0 " display warning messages if conqueTerm is configured incorrectly

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Clang-Format
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:clang_format#style_options = {
            \ "AllowShortIfStatementsOnASingleLine" : "false",
            \ "AllowShortBlocksOnASingleLine" : "false",
            \ "AllowShortFunctionsOnASingleLine" : "false",
            \ "IndentWidth" : 4,
            \ "UseTab" : "Never",
            \ "ColumnLimit" : 150,
            \ "BinPackParameters" : "true",
            \ "BreakBeforeBraces" : "Allman",
            \ "AccessModifierOffset" : -4,
            \ "IndentCaseLabels" : "true",
            \ "AlignAfterOpenBracket" : "Align",
            \ "BreakBeforeBinaryOperators" : "false",
            \ "BreakConstructorInitializersBeforeComma" : "true",
            \ "ConstructorInitializerAllOnOneLineOrOnePerLine " : "false"}

" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>
if has("autocmd")
    " map to <Leader>cf in C++ code
    autocmd FileType c,cpp,objc,java,py nnoremap <buffer><Leader>fcc :<C-u>ClangFormat<CR>
    autocmd FileType c,cpp,objc,java,py vnoremap <buffer><Leader>fcc :ClangFormat<CR>
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctrlp
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_map = '<c-f>'
map <leader>j :CtrlP<cr>
map <leader>jb :CtrlPBuffer<cr>
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\v[\/]\.(git|hg|svn|build)$',
            \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz|pyc|.DS_Store)$',
            \ 'link': 'some_bad_symbolic_links',
            \ }
"disable caching
let g:ctrlp_use_caching=0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30'
" Faster indexing of files; requires having ag (AKA the_silver_searcher)
" installed.
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
            \ --ignore .git
            \ --ignore .svn
            \ --ignore .hg
            \ --ignore .DS_Store
            \ --ignore "**/*.pyc"
            \ --ignore BoostParts
            \ -g ""'

let g:ctrlp_extensions = ['funky']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Funky
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>fu :CtrlPFunky<Cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ListToggle
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lt_location_list_toggle_map = '<leader>lt'
let g:lt_quickfix_list_toggle_map = '<leader>lq'
let g:lt_height = 10

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Gundo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" \ud toggles the Gundo plugin window
nnoremap <leader>t :GundoToggle<CR>
let g:gundo_width=80

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => UltiSnip and Snippet
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="ii"
" we can't use <tab> as our snippet key since we use that with YouCompleteMe
let g:UltiSnipsSnippetsDir         = '~./vim_runtime/temp_dirs/UltiSnips'
let g:UltiSnipsListSnippets        = "<c-m-s>"
let g:UltiSnipsJumpForwardTrigger  = "<right>"
let g:UltiSnipsJumpBackwardTrigger = "<left>"
let g:snips_author                 = 'leihu xi'
let g:neosnippet#snippets_directory='~/.vim_runtime/temp_dirs/vim-snippets/snippets'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NerdTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>nn :NERDTreeToggle<CR>
map  <C-e> <plug>NERDTreeTabsToggle<CR>
nmap <leader>nt :NERDTreeFind<CR>
map  <leader>nb :NERDTreeFromBookmark<Space>
map  <leader>nf :NERDTreeFind<cr>

let g:NERDTreeWinPos = "left"
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.py[cd]$', '\~$', '\.swo$', '\.swp$', '^\.git$', '^\.hg$', '^\.svn$', '\.bzr$']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

if has("autocmd")
    " close vim if the only window left open is a NERDTree
    autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
    " open NERDTree automatically when vim starts up on opening a directory
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
    " open a NERDTree automatically when vim starts up if no files were specified
    " autocmd StdinReadPre * let s:std_in=1
    " autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Rainbrow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['red',         'firebrick3'],
            \ ]

" \ ['black',       'SeaGreen3'],
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Improve Rainbrow
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"0 if you want to enable it later via :RainbowToggle
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => A.vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>a :A<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tmux-navigator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"* Activate autoupdate on exit
let g:tmux_navigator_save_on_switch = 1

"* Custom Key Bindings
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> {Left-mapping} :TmuxNavigateLeft<cr>
nnoremap <silent> {Down-Mapping} :TmuxNavigateDown<cr>
nnoremap <silent> {Up-Mapping} :TmuxNavigateUp<cr>
nnoremap <silent> {Right-Mapping} :TmuxNavigateRight<cr>
nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ackprg
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>cc :Ack<CR>
if executable('ag')
    let g:ackprg = 'ag --vimgrep'
    let g:ackprg = "ag --nocolor --nogroup --column"
elseif executable('ack-grep')
    let g:ackprg = "ack-grep --nocolor --nogroup --column"
elseif executable('ack')
    let g:ackprg = "ack --nocolor --nogroup --column"
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'gruvbox'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Interestingwords
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <leader>k :call InterestingWords('n')<cr>
nnoremap <silent> <leader>K :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Session
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:session_autoload        = 'no'
let g:session_autosave        = 'yes'
let g:session_default_to_last = 'yes'
let g:session_directory       = '~/.vim_runtime/temp_dirs/sessions'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => CtrlPfunky
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <Leader>fu :CtrlPFunky<Cr>
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<Cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tmux navigator
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tmux_navigator_no_mappings = 1
"split navigations
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-y> :TmuxNavigatePrevious<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Python mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pymode_rope=0
let g:pymode_rope_complete_on_dot = 0
"let g:pymode_python = 'python'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Pydoc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:pydoc_cmd = "/usr/bin/pydoc"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => cpp higlight
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:cpp_class_scope_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_experimental_simple_template_highlight = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => DelimitMate
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let delimitMate_expand_cr = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YankRing
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yankring_history_dir = '~/.vim_runtime/temp_dirs'
" this is so that single char deletes don't end up in the yankring
let g:yankring_min_element_length = 2
let g:yankring_window_height = 14
nnoremap <leader>r :YRShow<CR>

" this makes Y yank from the cursor to the end of the line, which makes more
" sense than the default of yanking the whole current line (we can use yy for
" that)
function! YRRunAfterMaps()
    nnoremap Y   :<C-U>YRYankCount 'y$'<CR>
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tabularize
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" looks at the current line and the lines above and below it and aligns all the
" equals signs; useful for when we have several lines of declarations
nnoremap <Leader>b = :Tabularize / = <CR>
vnoremap <Leader>b = :Tabularize / = <CR>
nnoremap <Leader>b/ :Tabularize /\/\//l2c1l0<CR>
vnoremap <Leader>b/ :Tabularize /\/\//l2c1l0<CR>
nnoremap <Leader>b, :Tabularize /,/l0r1<CR>
vnoremap <Leader>b, :Tabularize /,/l0r1<CR>
nnoremap <Leader>b& :Tabularize /&<CR>
vnoremap <Leader>b& :Tabularize /&<CR>
nnoremap <Leader>b= :Tabularize /^[^=]*\zs=<CR>
vnoremap <Leader>b= :Tabularize /^[^=]*\zs=<CR>
nnoremap <Leader>b=> :Tabularize /=><CR>
vnoremap <Leader>b=> :Tabularize /=><CR>
nnoremap <Leader>b: :Tabularize /:<CR>
vnoremap <Leader>b: :Tabularize /:<CR>
nnoremap <Leader>b:: :Tabularize /:\zs<CR>
vnoremap <Leader>b:: :Tabularize /:\zs<CR>
nnoremap <Leader>b, :Tabularize /,<CR>
vnoremap <Leader>b, :Tabularize /,<CR>
nnoremap <Leader>b,, :Tabularize /,\zs<CR>
vnoremap <Leader>b,, :Tabularize /,\zs<CR>
nnoremap <Leader>b<Bar> :Tabularize /<Bar><CR>
vnoremap <Leader>b<Bar> :Tabularize /<Bar><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EasyMotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map <Leader><leader>h <Plug>(easymotion-linebackward)
map <Leader><Leader>j <Plug>(easymotion-j)
map <Leader><Leader>k <Plug>(easymotion-k)
map <Leader><leader>l <Plug>(easymotion-lineforward)
map <Leader><leader>. <Plug>(easymotion-repeat)

" Provides the equivalent of <Leader>s, which is forwards/backwards search for a
" character.
" has to be 'nmap', 'noremap' doesn't work
nmap <leader>s <Plug>(easymotion-s)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_left = 0
let g:tagbar_sort = 0
if has("gui_macvim")
    let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
endif

nnoremap <Leader>tb :TagbarToggle<cr><c-w>=

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-indent-guides
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_color_change_percent = 7

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nman
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent>K :Nman <C-R><C-W><CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
if has("autocmd")
    " Vim-Go
    autocmd FileType go nmap <leader>r <Plug>(go-run)
    autocmd FileType go nmap <leader>b <Plug>(go-build)
    autocmd FileType go nmap <leader>t <Plug>(go-test)
    autocmd FileType go nmap <leader>c <Plug>(go-coverage)

    autocmd FileType go nmap <leader>ds <Plug>(go-def-split)
    autocmd FileType go nmap <leader>dv <Plug>(go-def-vertical)
    autocmd FileType go nmap <leader>dt <Plug>(go-def-tab)
    autocmd FileType go nmap <leader>gb <Plug>(go-doc-browser)
    autocmd FileType go nmap <leader>s <Plug>(go-implements)
    autocmd FileType go nmap <leader>i <Plug>(go-info)
    autocmd FileType go nmap <leader>e <Plug>(go-rename)
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Highlight Operator Fuction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! s:HighlightOperators()
    " for the last element of the regex, see :h /\@!
    " basically, searching for "/" is more complex since we want to avoid
    " matching against "//" or "/*" which would break C++ comment highlighting
    syntax match OperatorChars "?\|+\|-\|\*\|;\|:\|,\|&\||\|!\|\~\|%\|=\|\.\|/\(/\|*\)\@!"
    hi OperatorChars ctermfg=160
    hi OperatorChars guifg=#F6FF00
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_emit_conflict_warnings = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Wildfire
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:wildfire_objects = {
            \ "*" : ["i'", 'i"', "i)", "i]", "i}", "ip"],
            \ "html,xml" : ["at"],
            \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-json
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <leader>jt <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>
let g:vim_json_syntax_conceal = 0
