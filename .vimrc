
" Setup vim to use Pathogen
execute pathogen#infect()
execute pathogen#helptags()

set ignorecase
"set number              " Number on the side
set showmatch
set pastetoggle=<F2>
set hlsearch            " Highlight search things
set visualbell          " No beeping.
"set ruler             " Show me a ruler

" turn off auto adding comments on next line
" so you can cut and paste reliably
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set fo=tcq
set nocompatible
set modeline

" make backspace work like most other apps
set backspace=indent,eol,start

syntax on
syntax enable "Enable syntax hl
" The rest of the colorschemes installed are as follows:
" morning, peachpuff, blue, murphy, ron, zellner, darkblue, desert, koehler, and shine.
colorscheme desert
"colorscheme kellys

" detect the type of file that is edited for syntax highighting
" disabled becasue SecureCTR overrides the syntax colors
filetype on

" set default comment color to cyan instead of darkblue
" which is not very legible on a black background
highlight comment ctermfg=cyan

" Highlighting matching parens
"let loaded_matchparen = 1
hi MatchParen cterm=bold ctermbg=darkgreen

" Makes it do opther can read yoru screen
"set bg=light

" => Statusline
" Always hide the statusline
set laststatus=2
" Format the statusline
set statusline=\ %F%m%r%h\ %w\ \ %y%=\ Line:\ %l/%L:%c\ \ %P

" => Text, tab and indent related
"set tabstop=2
"set expandtab
"set softtabstop=2
"set shiftwidth=2

highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\  /
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/


" Set up puppet manifest and spec options
au BufRead,BufNewFile *.erb
  \ set filetype=ruby
au BufRead,BufNewFile *.pp
  \ set filetype=puppet
au BufRead,BufNewFile *_spec.rb
  \ nmap <F8> :!rspec --color %<CR>

" filetype plugin indent on  " Enable indentation matching for =>'s

" map control-backspace to delete the previous word
"set backspace=indent,eol,start

" enable Syntastic errors in the status area
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1
let g:syntastic_auto_loc_list=1
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
