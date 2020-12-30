" move.vim

" move carsol like physics
nnoremap j gj
nnoremap k gk
nnoremap <Down> gj
nnoremap <Up> gk

" move buffer
nnoremap <c-i> :bprevious<CR>
nnoremap <c-o> :bnext<CR>

" delete buffer
nnoremap <c-p> :bdelete<CR>

" move over window
nnoremap <c-h> <c-w><c-h>
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
