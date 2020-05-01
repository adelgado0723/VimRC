
" Function that python to format an XML file
com! FormatXML :%!python -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"
nnoremap = :FormatXML<Cr>

" Enable folds in XML documents
let g:xml_syntax_folding=1
au FileType xml setlocal foldmethod=syntax

" Folding for PS1
" Unfolds on opening
let g:ps1_nofold_blocks = 1
au FileType ps1 setlocal foldmethod=syntax
" Unfolds digital signatures in scritps
au FileType c setlocal foldmethod=syntax

" Folding for c and cpp
au FileType c setlocal foldmethod=syntax
au FileType cpp setlocal foldmethod=syntax
au FileType h setlocal foldmethod=syntax

" Open Documents Completely Unfolded
set foldlevel=99

" Tab Shortcuts
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>


" Relative Numbers
set relativenumber

" Set to run .vimrc files from the directory where vim was launched
set exrc

" Disables some security vulnerabilities with set exrc
set secure

" Line Ruler
" set colorcolumn=110
" highlight ColorColumn ctermbg=darkgray
