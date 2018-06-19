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

"Quick escape."
imap ,, <ESC>

"Double press 'o' to add a newline with out entering insert mode."
nmap ,o o<Esc>k
nmap ,O O<Esc>j

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
