" -----------------
"  Key bindings ---
" -----------------
nnoremap <Space> <Nop>
let mapleader = "\<Space>"

" Stop it, hash key.
inoremap # X<BS>#

" Map <space> to togge folds:
" nnoremap <space> zA<CR>

" Map <leader><tab> to move to next split
nnoremap <leader><tab> <C-w><C-w>

" Use double-<esc> to save the file
noremap <Esc><Esc> :w<cr>

" Remap jj to Esc.
inoremap jj <Esc>

" Toggle paste
nnoremap <F6> :set paste!<cr>

" Escape terminal mode (nvim)
tnoremap <Esc> <C-\><C-n>

" Edit and source .vimrc
nnoremap <silent> <leader>ev :e ~/.vimrc<CR>
nnoremap <silent> <leader>sv :so ~/.vimrc<CR>

"Remove search highlighting
" nnoremap <leader><space> :noh<cr>   

"Pressing tab jumps to matching bracket 
nnoremap <tab> %
vnoremap <tab> %

" Backspace in normal mode goes to previous buffer
nnoremap <silent><backspace> <C-o> 

" ------------------------------------------------------------------------------
"  Git 
" ------------------------------------------------------------------------------
" Keymappings
" Open git status buffer
nnoremap <leader>gg :Git<CR>
" Search and manipulate branches
nnoremap <leader>gb :GBranches<CR>
" Search and manipulate commit history
nnoremap <leader>gc :Commits<CR>
" Open in browser
nnoremap <leader>gB :GBrowse<CR>
" Open visual selection in browser
vnoremap <leader>gB :GBrowse<CR>
" Open Diff split
nnoremap <leader>gd :GDiff<CR>
" Stage and unstage hunks
nnoremap <leader>ghs <Plug>(GitGutterStageHunk)
nnoremap <leader>ghu <Plug>(GitGutterUndoHunk)
vnoremap <leader>ghs <Plug>(GitGutterStageHunk)
vnoremap <leader>ghu <Plug>(GitGutterUndoHunk)

