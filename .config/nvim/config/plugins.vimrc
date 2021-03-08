" --------------------------
"  Plugin configurations ---
" --------------------------

" Scheme / Racket
if has("autocmd")
  au BufReadPost *.rkt,*.rktl set filetype=scheme
endif

" tsx 
if has("autocmd")
  au BufReadPost *.tsx set filetype=typescript.tsx
endif
"
" Ledger
if has("autocmd")
  au BufReadPost *.ldg,*.ledger,*.journal set filetype=ledger
endif


" vim-markdown
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'clojure', 'javascript', 'haskell', 'typescript']

" NERDTree
map <F1> :NERDTreeToggle<CR>

" Scratch.vim
map <F2> :Scratch<CR>

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#left_sep = ' '
" let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='minimalist'
" let g:airline_theme='gruvbox'

" Fzf
set  runtimepath+=/usr/local/opt/fzf

nnoremap <silent>ff :FZF<cr>
nnoremap <silent>fb :Buffers<cr>

nnoremap <silent><Leader><Leader> :Rg<cr>

let g:fzf_layout = { 'window': { 'width': 0.7, 'height': 0.6 } }
let g:fzf_preview_window = 'right:60%'

" Rainbow parentheses
" Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,scheme RainbowParentheses
augroup END

" Goyo + Limelight
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
nmap <Leader>l <Plug>(Limelight)
xmap <Leader>l <Plug>(Limelight)

" Startify
" 'Most Recent Files' number
let g:startify_files_number           = 18

" Update session automatically as you exit vim
let g:startify_session_persistence    = 1

" Autoload session if a Session.vim is found
let g:startify_session_autoload = 1

" Automatically cd to repository root
let g:startify_change_to_vcs_root = 0

" Simplify the startify list to just recent files and sessions
let g:startify_lists = [
  \ { 'type': 'dir',       'header': ['   Recent files'] },
  \ { 'type': 'bookmarks',       'header': ['   Bookmarks'] },
  \ { 'type': 'sessions',  'header': ['   Saved sessions'] },
  \ ]


" Bookmarks 
let g:startify_bookmarks = [
      \ '~/Code/Kumu/kumu/products/kumu',
      \ '~/Code/Kumu/kumu/products/undercurrent',
      \ '~/Code/Kumu/kumu/products/weavr',
      \ '~/Code/sticky-studio',
      \ '~/Code/sroelants',
      \ '~/Code',
      \ '~/Notes'
      \]
" Fancy custom header
let g:startify_custom_header = [
  \ "  ",
  \ '   ╻ ╻   ╻   ┏┳┓',
  \ '   ┃┏┛   ┃   ┃┃┃',
  \ '   ┗┛    ╹   ╹ ╹',
  \ '   ',
  \ ]


" Vimwiki
let g:vimwiki_listsyms = ' -=≡✓'
let g:vimwiki_listsym_rejected = '✗'

" vimwiki 
let wiki_1 = {}
let wiki_1.path = '~/Notes/vimwiki/'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'
let wiki_1.nested_syntaxes = {'javascript': 'javascript',
  \'typescript': 'typescript'}
"
let wiki_2 = {}
let wiki_2.path = '~/Notes/personal/'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'
let wiki_2.nested_syntaxes = {'javascript': 'javascript'}

let g:vimwiki_list = [wiki_1, wiki_2]

" Calendar-vim
let g:calendar_options = 'nonu nornu'
nnoremap <leader>c :Calendar<CR>

" FZF Notational velocity
let g:nv_search_paths = ['~/Notes']
nnoremap <silent>fn :NV<cr>

" Prettier
let g:prettier#autoformat = 1
let g:prettier#exec_cmd_async = 1

" Glsl highlighting in js template strings
for language in ['glsl']
  call SyntaxRange#Include(language.'`', '`', language, 'String')
endfor

" Devicons
let g:WebDevIconsUnicodeGlyphDoubleWidth = 0
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:webdevicons_conceal_nerdtree_brackets = 1

" Gitgutter
" Use fontawesome icons as signs
let g:gitgutter_sign_added = ''
let g:gitgutter_sign_modified = ''
let g:gitgutter_sign_removed = ''
let g:gitgutter_sign_removed_first_line = ''
let g:gitgutter_sign_modified_removed = ''

" ------------------------------------------------------------------------------
"  Prettier
" ------------------------------------------------------------------------------
"  Keymappings
nnoremap <leader>p :Prettier<CR>

" ------------------------------------------------------------------------------
"  Treesitter
" ------------------------------------------------------------------------------

lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
  indent = {
    enable = true,
  },
}
EOF
