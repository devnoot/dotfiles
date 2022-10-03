"
" Configuration for vim-airline plugin.
"

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' '
let g:airline_symbols.colnr = ' '
let g:airline_symbols.dirty='⚡'

let airline#extensions#coc#error_symbol = 'E:'
let airline#extensions#coc#warning_symbol = 'W:'
let airline#extensions#coc#stl_format_err = '%E{[%e(#%fe)]}'
let airline#extensions#coc#stl_format_warn = '%W{[%w(#%fw)]}'
let g:airline#extensions#ctrlp#color_template = 'visual'
let g:airline#extensions#fzf#enabled = 1
let g:airline#extensions#nerdtree_statusline = 1
let g:airline#extensions#syntastic#enabled = 1
let airline#extensions#syntastic#error_symbol = 'E:'
let airline#extensions#syntastic#stl_format_err = '%E{[%fe(#%e)]}'
let airline#extensions#syntastic#warning_symbol = 'W:'
let airline#extensions#syntastic#stl_format_warn = '%W{[%fw(#%w)]}'
let g:airline#extensions#term#enabled = 1
