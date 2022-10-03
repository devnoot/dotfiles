
" Keybinds
" Type         Keybind               Action
map            <c-b>                 :NvimTreeToggle<CR>
map            <leader>n             :bn<CR>
map            <leader>p             :bp<CR>
map            <leader>z             :ZenMode<CR>
map            <c-h>                 <c-w>h
map            <c-j>                 <c-w>j
map            <c-k>                 <c-w>k
map            <c-l>                 <c-w>l
map            <leader>f             <Plug>(easymotion-bd-f)
map            <leader>L             <Plug>(easymotion-bd-jk)
map            <leader>w             <Plug>(easymotion-bd-w)
map            <leader>s             <Plug>(easymotion-s2)
map            n                     <Plug>(easymotion-next)
map            N                     <Plug>(easymotion-prev)
map            <Leader>j             <Plug>(easymotion-j)
map            <Leader>k             <Plug>(easymotion-k)
map            /                     <Plug>(easymotion-sn)
omap           /                     <Plug>(easymotion-tn)
nmap           <leader>]             :vsp<CR>
nmap           <leader>-             :sp<CR>
nmap           <F8>                  :TagbarToggle<CR>
nmap           <leader>e             :Explore<CR>
nmap           <leader>rn            <Plug>(coc-rename)
nmap           <leader>f             <Plug>(coc-format-selected)
nmap           <silent>gd            <Plug>(coc-definition)
nmap           <silent>gy            <Plug>(coc-type-definition)
nmap           <silent>gi            <Plug>(coc-implementation)
nmap           <silent>gr            <Plug>(coc-references)
xmap           <leader>f             <Plug>(coc-format-selected)
tnoremap       <Esc>                 <C-\><C-n>
nnoremap       <C-p>                 :FZF<CR>
nnoremap       <leader>k             :call <SID>show_documentation()<CR>
inoremap       jk                    <ESC>
inoremap       <silent><expr> <leader><space> coc#refresh()

" fzf keybinds
let g:fzf_action = { 'ctrl-t': 'tab split', 'ctrl-s': 'split', 'ctrl-v': 'vsplit' }

