"Enables line numbering."
set nu

"Enable syntax highlighting."
syntax enable

"Always display the statusline."
set laststatus=2

"Status line options."
set statusline=%F"Shortened filename."
set statusline+=%m"If file can't be modified, insert indicator."
set statusline+=%r"If file is readonly, insert indicator."
set statusline+=%h"If file is a help file, insert indicator."
set statusline+=%w"If file is a preview, insert indicator."
set statusline+=\ "Space"
set statusline+=[FORMAT=%{&ff}]"Display format of file."
set statusline+=\ "Space"
set statusline+=[TYPE=%Y]"Display file formate of file."
set statusline+=\ "Space"
set statusline+=[POS=%l,%v]"Display cursor position."
set statusline+=[%p%%]"Display percent of file navigated."
set statusline+=\ "Space"
set statusline+=%="Shift to right align."
set statusline+=%{strftime(\"%Y-%m-%d\ %I:%M\ %p\")}"Display the time."
"set statusline+=\ --\ %{strftime(\"%m/%d/%y\ %I:%M\ %p\")}"Mom format.""

"Don't wrap lines."
set nowrap

"Auto indent with tabs."
set cindent
set smartindent
set autoindent

"Highlight search results"
set hls

"Makes vim rename tmux panes to the current file name."
autocmd BufEnter * call system("tmux rename-window " . expand("%:t"))
autocmd VimLeave * call system("tmux rename-window bash")
autocmd BufEnter * let &titlestring = ' ' . expand("%:t")                                                                 
set title

"Enable the mouse"
set mouse=a

"Hybrid-line numbering"
set relativenumber
set number

"Allow backspace to delete anything."
set backspace=indent,eol,start

"gp selects the most recently pasted text."
nnoremap gp `[v`]

"vim-plug configuration"
call plug#begin('~/.vim/plugged')

"General plugins"
Plug 'tpope/vim-sleuth'
Plug 'ervandew/supertab'

"Syntax highlighting"
Plug 'keith/swift.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'vim-python/python-syntax'

call plug#end()

"Configure python highlighting"
let g:python_highlight_all = 1
let g:python_highlight_space_errors = 0


