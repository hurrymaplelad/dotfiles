" Adam's .vimrc

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Files ----------------------------------------------------------------------
set nobackup		" do not keep a backup file, use versions instead
set directory=/tmp
set autowrite 	 	" automatically save when compiling, etc.
set switchbuf=useopen,usetab,newtab " quickfix open in tabs
set ffs+=mac 		" Detect Mac formatted files
filetype plugin indent on " load type specific syntax and indent files

" Chrome ---------------------------------------------------------------------
set ruler			" show the cursor position all the time
set number			" line numbering
set showcmd			" display incomplete commands
set history=50		" keep 50 lines of command line history
set incsearch		" do incremental searching
set completeopt+=preview " don't open preview window
set linebreak		" automatically break long lines

" Auto Indent ----------------------------------------------------------------
set tabstop=2 			" tabs appear as 2 spaces
set shiftwidth=2		"
set autoindent 			" always set autoindenting on
set expandtab       " replace tabs with spaces
set smartindent
"set formatoptions+=acw 	" automatically reformat paragraphs

" Sytax Highlighting ---------------------------------------------------------
" Switch syntax highlighting on, when the terminal has colors
colorscheme desert
syntax on

" Abbreviations --------------------------------------------------------------
" open help in a new tab
cabbrev h tab help
cabbrev help tab help
" tabnew
cabbrev tbn tabnew

" Key Mappings ---------------------------------------------------------------
set backspace=indent,eol,start 	" allow backspacing over everything
noremap <Space> <PageDown>
noremap <BS> <PageUp>
" vertical scroll by screen line, makes sense with linebreak
nnoremap j gj
nnoremap k gk
" open files in a new tab
map gf :tabedit <cfile><CR>
" Automatically add closing brace when typing { <Return> in quick succession
inoremap {<CR> {<CR>}<ESC>O

" Map FillLine functions for easy comment formatting
" TODO: update custom plugins for pathogen
" inoremap ,/ <C-R>=FillLineWith('/')<CR>
" nnoremap ,/ :call FillLineWith('/')<CR>
" inoremap ,, <C-R>=FillLinePrompt()<CR>
" nnoremap ,, :call FillLinePrompt()<CR>
" Use tab for completion in appropriate contexts
" inoremap <tab> <C-R>=InsertTabWrapper()<CR>
inoremap <Enter> <C-R>=InsertEnterWrapper()<CR>

" Enter always accepts the current completion selection
function! InsertEnterWrapper()
	if pumvisible()
		return "\<C-Y>"
	else
		return "\<Enter>"
	endif
endfunction

" AutoCommands ---------------------------------------------------------------
if has("autocmd")
	" Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
	" Clear existing autocommands in this group
	au!

	" never automatically continue comments
	autocmd FileType * set formatoptions-=ro

	" When editing a file, always jump to the last known cursor position.
	autocmd BufReadPost *
		\ if line("'\"") > 0 && line("'\"") <= line("$") |
		\	 exe "normal g`\"" |
		\ endif

	augroup END
endif

" Plugins
"  perhaps: ack.vim, ctrlp.vim, vim-json, vim-coffee-script
" call pathogen#infect()

" Ctrl.p
let g:ctrlp_open_new_file = 't'
let g:ctrlp_open_multiple_files = '2t'
" TODO: drop this line to search node_modules?
" let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']
let g:ctrlp_map = '<C-t>'
" always open in tabs
"   see: https://github.com/kien/ctrlp.vim/issues/119
let g:ctrlp_prompt_mappings = {
  \ 'AcceptSelection("e")': [],
  \ 'AcceptSelection("t")': ['<cr>', '<c-m>']
  \}

" vim-coffee-script
let coffee_compile_vert = 0
