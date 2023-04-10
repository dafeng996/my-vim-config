syntax enable

packadd! onedark.vim

"if has("termguicolors")
"  " fix bug for vim
"  set t_8f=^[[38;2;%lu;%lu;%lum
"  set t_8b=^[[48;2;%lu;%lu;%lum
"
"  " enable true color
"  set termguicolors
"endif

call plug#begin()
  "LeaderF rg 依赖 https://github.com/BurntSushi/ripgrep/releases
  Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'rhysd/git-messenger.vim'
  "Plug 'mattn/emmet-vim'
  "Plug 'hzchirs/vim-material'
  "Plug 'cormacrelf/vim-colors-github'
  "Plug 'ryanoasis/vim-devicons'
call plug#end()

"let $GTAGSLABEL = 'native-pygments'
"let $GTAGSCONF = '~/.vim/gtags.conf'
"let $GTAGSLABEL = 'pygments'
"let $GTAGSCONF = '/Users/mac/vim-config/gtags.conf'

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_GtagsSource = 1
let g:Lf_GtagsAutoGenerate = 1
"https://ftp.gnu.org/pub/gnu/global/global-6.6.8.tar.gz
let g:Lf_Gtagsconf = '/home/cheng/vim-config/gtags.conf'
let g:Lf_UseMemoryCache = 0
let g:Lf_UseCache = 0
"需要安装https://github.com/universal-ctags/ctags
"let g:Lf_Ctags = '/usr/local/bin/ctags'
let g:Lf_Gtagslabel = 'native-pygments'
"解析js需要安装 pip install pygments'
"let g:Lf_Gtagslabel = 'pygments'
"let g:Lf_Gtagslabel = 'new-ctags'
let g:Lf_GtagsSkipUnreadable = 1
let g:Lf_WildIgnore = {
  \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh','node_modules', 'dist'],
  \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
  \ }
let g:Lf_RgConfig = [
  \ "--max-columns=150",
  \ "--glob=!node_modules/*",
  \ "--glob=!dist/*",
  \ "--glob=!yarn.lock"
  \ ]

let g:LanguageClient_serverCommands = {
  \ 'vue': ['vls']
  \ }

let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

"let g:indentLine_setColors = 0
"let g:indentLine_defaultGroup = 'SpecialKey'
"let g:indentLine_color_term = 239
let g:indentLine_char = 'space'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 1
let g:indentLine_enabled = 1


set nu 
set tabstop=2
set shiftwidth=2
set showmatch
set expandtab
set hlsearch
set cursorline
"set cursorcolumn
set autoindent
set cindent
set smartindent
set term=screen
set guioptions-=m
set cmdheight=1
set encoding=UTF-8

"imap () ()<Left>
"imap [] []<Left>
"imap {} {}<Left>
"imap "" ""<Left>
"imap '' ''<Left>


autocmd vimenter * NERDTree
autocmd FileType vue syntax sync fromstart

nmap <A-R> :terminal<CR>
nmap <F2> :NERDTree<CR>
nmap <C-P> :Leaderf file<CR>
nmap <C-F> :Leaderf rg<CR>

let NERDTreeWinSize=25
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:SuperTabDefaultCompletionType="context"
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=1

"需要安装https://github.com/powerline/fonts字体
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
set laststatus=2


let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
nmap <F8> :TagbarToggle<CR>


"----------------hzchirs/vim-material配色方案-----------------
" Dark
" set background=dark
" colorscheme vim-material
"
" Palenight
" let g:material_style='palenight'
" set background=dark
" colorscheme vim-material
"
" " Oceanic
" let g:material_style='oceanic'
" set background=dark
" colorscheme vim-material
"
" " Light
" set background=light
" colorscheme vim-material
" let g:airline_theme='material'
"---------------------------end-------------------------------


"---------------vim-colors-github配色方案---------------------
"colorscheme github
"let g:airline_theme = "github"
"let g:lightline = { 'colorscheme': 'github' }
"let g:github_colors_soft = 1
"set background=light
"let g:github_colors_block_diffmark = 0
"---------------------------end-------------------------------


"---------------------onedark配色方案-------------------------
colorscheme onedark
let g:onedark_termcolors=256
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
let g:airline_theme='onedark'
"---------------------------end-------------------------------


"---------------------微信小程序高亮方案----------------------
"au BufRead,BufNewFile *.wxml set filetype=html
"au BufRead,BufNewFile *.wxss set filetype=css
"---------------------------end-------------------------------

"---------------------#region折叠方案-------------------------
"使用 #region 上按 zf%
let b:match_words = '\s*#\s*region.*$:\s*#\s*endregion'
"---------------------------end-------------------------------


"---------------------#region git-messenger-------------------
"<Leader> 快捷键=>\
"nmap <Leader>git <Plug>(git-messenger)
nmap <silent><Leader>g :call setbufvar(winbufnr(popup_atcursor(split(system("git log -n 1 -L " . line(".") . ",+1:" . expand("%:p")), "\n"), { "padding": [1,1,1,1], "pos": "botleft", "wrap": 0 })), "&filetype", "git")<CR>
hi link gitmessengerPopupNormal CursorLine
hi link gitmessengerHeader Statement
hi link gitmessengerHash Special
hi link gitmessengerHistory Title
hi gitmessengerPopupNormal term=None guifg=#eeeeee guibg=#333333 ctermfg=255 ctermbg=234
hi gitmessengerHeader term=None guifg=#88b8f6 ctermfg=111
hi gitmessengerHash term=None guifg=#f0eaaa ctermfg=229
hi gitmessengerHistory term=None guifg=#fd8489 ctermfg=210
let g:git_messenger_floating_win_opts = { 'border': 'single' }
let g:git_messenger_popup_content_margins = v:true
function! s:setup_git_messenger_popup() abort
  " Your favorite configuration here
  " For example, set go back/forward history to <C-o>/<C-i>
  nmap <buffer><C-o> o
  nmap <buffer><C-i> O
endfunction
autocmd FileType gitmessengerpopup call <SID>setup_git_messenger_popup()
"---------------------------end-------------------------------


"---------------------#region vue文件关键词快速导航-----------
nmap <Leader>s ?<script<CR>
nmap <Leader>e ?export default {<CR>
nmap <Leader>p ?props:<CR>
nmap <Leader>d ?data()<CR>
nmap <Leader>c ?computed:<CR>
nmap <Leader>w ?watch:<CR>
nmap <Leader>m ?methods:<CR>
nmap <Leader>cr ?created(<CR>
nmap <Leader>mo ?mounted(<CR>
nmap <Leader>st ?<style<CR>
nmap <Leader>im ?import<CR>
"---------------------------end-------------------------------

"---------------------#region 插入时间------------------------
iab xtime <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>
"---------------------------end-------------------------------

"---------------------#region 文件模板------------------------
"autocmd BufNewFile *.vue 0r ~/.vim/template/vue.vue
"autocmd BufRead *.vue if getfsize(expand('%'))==0|$r ~/.vim/template/vue.vue|endif
"autocmd BufRead *.js if getfsize(expand('%'))==0|$r ~/.vim/template/js.js|endif
func CreateJSTemplate()
  call setline(1,"/*------------------------------------------------------")
  call setline(2,"¦ 文件名")
  call setline(3,"¦ 文件描述")
  call setline(4,"¦ ")
  call setline(5,"¦ Author: 大风")
  call setline(6,"¦ Email: 1236192@qq.com")
  call setline(7,"¦ Date: ".strftime("%Y-%m-%d %H:%M:%S"))
  call setline(8,"¦ Version: 1.0")
  call setline(9,"¦ FilePath: ".expand("%:r").expand(".").expand("%:e"))
  call setline(10,"¦------------------------------------------------------*/")
  call setline(11, "")
  call setline(12, "/**")
  call setline(13, " * 默认输出")
  call setline(14, " * @returns {Object<any>}")
  call setline(15, " */")
  call setline(16, "export default {")
  call setline(17, "}")
endfunc
autocmd BufRead *.js if getfsize(expand('%'))==0|exec ":call CreateJSTemplate()"|endif

func CreateVUETemplate()
  call setline(1,"<!------------------------------------------------------")
  call setline(2," ¦ 文件名")
  call setline(3," ¦ 文件描述")
  call setline(4," ¦ ")
  call setline(5," ¦ Author: 大风")
  call setline(6," ¦ Email: 1236192@qq.com")
  call setline(7," ¦ Date: ".strftime("%Y-%m-%d %H:%M:%S"))
  call setline(8," ¦ Version: 1.0")
  call setline(9," ¦ FilePath: ".expand("%:r").expand(".").expand("%:e"))
  call setline(10," ¦----------------------------------------------------->")
  call setline(11, "")
  call setline(12, "<template>")
  call setline(13, "  <div>vue template</div>")
  call setline(14, "</template>")
  call setline(15, "")
  call setline(16, "<script>")
  call setline(17, "export default {")
  call setline(18, "  name: 'ComponentName'")
  call setline(19, "}")
  call setline(20, "</script>")
  call setline(21, "")
  call setline(22, "<style lang='less' scoped>")
  call setline(23, "</style>")
  call setline(24, "")
endfunc
autocmd BufRead *.vue if getfsize(expand('%'))==0|exec ":call CreateVUETemplate()"|endif

func CreateLessTemplate()
  call setline(1,"/*------------------------------------------------------")
  call setline(2,"¦ 文件名")
  call setline(3,"¦ 文件描述")
  call setline(4,"¦ ")
  call setline(5,"¦ Author: 大风")
  call setline(6,"¦ Email: 1236192@qq.com")
  call setline(7,"¦ Date: ".strftime("%Y-%m-%d %H:%M:%S"))
  call setline(8,"¦ Version: 1.0")
  call setline(9,"¦ FilePath: ".expand("%:r").expand(".").expand("%:e"))
  call setline(10,"¦------------------------------------------------------*/")
endfunc
autocmd BufRead *.less if getfsize(expand('%'))==0|exec ":call CreateLessTemplate()"|endif

func CreateCTemplate()
  call setline(1,"/*------------------------------------------------------")
  call setline(2,"¦ 文件名")
  call setline(3,"¦ 文件描述")
  call setline(4,"¦ ")
  call setline(5,"¦ Author: 大风")
  call setline(6,"¦ Email: 1236192@qq.com")
  call setline(7,"¦ Date: ".strftime("%Y-%m-%d %H:%M:%S"))
  call setline(8,"¦ Version: 1.0")
  call setline(9,"¦ FilePath: ".expand("%:r").expand(".").expand("%:e"))
  call setline(10,"¦------------------------------------------------------*/")
endfunc
autocmd BufRead *.c if getfsize(expand('%'))==0|exec ":call CreateLessTemplate()"|endif

func CreateCPPTemplate()
  call setline(1,"/*------------------------------------------------------")
  call setline(2,"¦ 文件名")
  call setline(3,"¦ 文件描述")
  call setline(4,"¦ ")
  call setline(5,"¦ Author: 大风")
  call setline(6,"¦ Email: 1236192@qq.com")
  call setline(7,"¦ Date: ".strftime("%Y-%m-%d %H:%M:%S"))
  call setline(8,"¦ Version: 1.0")
  call setline(9,"¦ FilePath: ".expand("%:r").expand(".").expand("%:e"))
  call setline(10,"¦------------------------------------------------------*/")
endfunc
autocmd BufRead *.cpp if getfsize(expand('%'))==0|exec ":call CreateCPPTemplate()"|endif

func CreateHTemplate()
  call setline(1,"/*------------------------------------------------------")
  call setline(2,"¦ 文件名")
  call setline(3,"¦ 文件描述")
  call setline(4,"¦ ")
  call setline(5,"¦ Author: 大风")
  call setline(6,"¦ Email: 1236192@qq.com")
  call setline(7,"¦ Date: ".strftime("%Y-%m-%d %H:%M:%S"))
  call setline(8,"¦ Version: 1.0")
  call setline(9,"¦ FilePath: ".expand("%:r").expand(".").expand("%:e"))
  call setline(10,"¦------------------------------------------------------*/")
endfunc
autocmd BufRead *.h if getfsize(expand('%'))==0|exec ":call CreateLessTemplate()"|endif

func CreatePyTemplate()
  call setline(1,"/*------------------------------------------------------")
  call setline(2,"¦ 文件名")
  call setline(3,"¦ 文件描述")
  call setline(4,"¦ ")
  call setline(5,"¦ Author: 大风")
  call setline(6,"¦ Email: 1236192@qq.com")
  call setline(7,"¦ Date: ".strftime("%Y-%m-%d %H:%M:%S"))
  call setline(8,"¦ Version: 1.0")
  call setline(9,"¦ FilePath: ".expand("%:r").expand(".").expand("%:e"))
  call setline(10,"¦------------------------------------------------------*/")
endfunc
autocmd BufRead *.cpp if getfsize(expand('%'))==0|exec ":call CreatePyTemplate()"|endif
"---------------------------end-------------------------------

"---------------------#region 自定义eslint 命令---------------
"command Eslint execute '!eslint --fix ' . @%
command Eslint :execute '!eslint --fix %' | edit
"command Eslint :silent exec '!eslint --fix %' | edit
"---------------------------end-------------------------------

"---------------------#region C 语言风格缩进---------------
autocmd FileType c setlocal et sta sw=4 sts=4
autocmd FileType cpp setlocal et sta sw=4 sts=4
"----------------------------end---------------------------
