"Show status bar
set laststatus=2

"Information in Status Line
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%l,%c%V]\ [%p%%] 

" Show Cursor Line
set cursorline

" Show numbers
set number

" Set distance of numbers
set numberwidth=1

"  Set Spell language
set spelllang=en,pt
set spellsuggest=6
set spell


" Abbreviations
source $HOME/.vim/abbreviations.vim

" Templates
function! LoadTemplate(extension)
	silent! :execute '0r ~/.vim/templates/'. a:extension. '.tpl'
	silent! execute 'source ~/.vim/templates/'.a:extension.'.patterns.tpl'
endfunction

autocmd BufNewFile * silent! call LoadTemplate('%:e')

" Custom command 
nnoremap <c-j> /<+.\{-1,}+><cr>c/+>/e<cr>
inoremap <c-j> <ESC>/<+.\{-1,}+><cr>c/+>/e<cr>
