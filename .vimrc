" Remove ALL autocommands for the current group.
	autocmd!
" lets start with pathogen
	execute pathogen#infect()
	syntax on
	filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" For Valloric YCM
	let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
    let g:ycm_confirm_extra_conf = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YCM config ends
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Syntastic ends
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips Config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"For UltiSnips
	" Trigger configuration. Do not use <tab> if you use
	" https://github.com/Valloric/YouCompleteMe.
	let g:UltiSnipsExpandTrigger = "<c-a>"
	let g:UltiSnipsJumpForwardTrigger="<c-n>"
    let g:UltiSnipsJumpBackwardTrigger="<c-b>"
	
	" If you want :UltiSnipsEdit to split your window.
	let g:UltiSnipsEditSplit="horizontal"

	"Define the directories to search for snippets
	let g:UltiSnipsSnippetsDir = "~/.vim/mysnippets"
	let g:UltiSnipsSnippetDirectories=["mysnippets","UltiSnips"]
	" UltiSnips completion function that tries to expand a snippet. If there's no
	" snippet for expanding, it checks for completion window and if it's
	" shown, selects first element. If there's no completion window it
	" tries to jump to next placeholder. If there's no placeholder it just
	" returns TAB key 
	"function! g:UltiSnips_Complete()
	"    call UltiSnips#ExpandSnippet()
	"    if g:ulti_expand_res == 0
	"        if pumvisible()
	"            return ""
	"        else
	"            call UltiSnips#JumpForwards()
	"            if g:ulti_jump_forwards_res == 0
	"               return "\<TAB>"
	"            endif
	"        endif
	"    endif
	"    return ""
	"endfunction
	"au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
	"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Ultisnips Config ends
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" cause vim to read .vimrc from local dir if present
	set exrc
	set secure

" lets set tab options
	set tabstop=4
	set softtabstop=4
	set shiftwidth=4
	set expandtab

" set autoindent
	set autoindent

" keep no backup files
	set nobackup
	set nowritebackup

" set the linesize
	set textwidth=80

" show line number
	set nu

" show commands
	set showcmd

" show cursor position
	set ruler

" set no of lines of history vim remembers
	set history=1000

" set backspace to work normally
	set backspace=eol,indent,start

" set command bar height
	set cmdheight=2

" set dynamic search
	set incsearch

" let's use smarttabs
	set smarttab

" for colors
	if &t_Co > 2 || has("gui_running")
		" Turn on search highlighting
		set hlsearch
		:hi Search ctermbg=DarkGray ctermfg=White guibg=DarkGray guifg=White
		" Press F4 to toggle highlighting on/off, and show current value.
		:noremap <F4> :set hlsearch! hlsearch?<CR>
	endif

" set mouse
    set mouse=a

" Key Remaps
	vnoremap . :norm.<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General Settings end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymaps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Change the leader key
	let mapleader = ","

" Let's use the Leader
	nmap <leader>w :w!<cr>

" Simply serach by mapping <space> to /
	nmap <space> /
	nmap <c-space> ?

" Disable search highlight
	nmap <silent> <leader><cr> :noh<cr>

" Moving between windows
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-h> <C-W>h
	map <C-l> <C-W>l

" Toggle paste mode on and off
	map <leader>pp :setlocal paste!<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Keymaps end
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

