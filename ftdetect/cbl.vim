" Vim filetype file
" Language: CBL for Minecraft command blocks
" Created by Andrew Davis
" Created on 6/4/2020
" Licensed under the MIT License

" set the filetype
au BufRead,BufNewFile *.cbl set filetype=cbl

" set the indentations
au BufRead,BufNewFile *.cbl set cindent
au BufRead,BufNewFile *.cbl set autoindent
au BufRead,BufNewFile *.cbl set tabstop=6
au BufRead,BufNewFile *.cbl set shiftwidth=6


" end of file
