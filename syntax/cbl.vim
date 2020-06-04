" Vim syntax file
" Language: CBL for Minecraft command blocks
" Created by Andrew Davis
" Created on 6/4/2020
" Licensed under the MIT License

" ensure no syntax duplicates
if exists("b:current_syntax")
	finish
endif

" define operators
syn match op "\|\|"
syn match op "&&"
syn match op "\|"
syn match op "\^"
syn match op "&"
syn match op "="
syn match op "=="
syn match op "<"
syn match op ">"
syn match op "<="
syn match op ">="
syn match op "<<"
syn match op ">>"
syn match op "+"
syn match op "-"
syn match op "\*"
syn match op "\/"
syn match op "%"
syn match op "~"
syn match op "!"
syn match op "++"
syn match op "--"
syn match op "!="
syn match op "\[\]"


" define reserved language keywords
syn keyword reserved if else while do for in at ir continue break return filter await async include
syn keyword reserved inline constructor singleton type macro constexpr property is this
syn keyword reserved operator nextgroup=op 

" define types
syn keyword types int decimal string bool Maybe Entity EntityLocal EntityPos EntityPosComponent EntityType
syn keyword types Entities vec3 vec3i vec3d World Blocks BlockType Items ItemType TagEvent AdvEvent Event Events
syn keyword types Game Text void 

" define comments
syn keyword todo contained TODO FIXME NOTE
syn match slcomment '\/\/.*$' contains=todo 
syn region mlcomment start='/\*' end='\*/'

" define literals
syn match intLit '\d\+'
syn match intLit '[-+]\d\+'
syn match decLit '[-+]\?\d\+\.\d*'
syn region strLit start=/"/ skip=/\\./ end=/"/
syn keyword boolLit true false

" set the current syntax
let b:current_syntax = "cbl"

" link the highlighting
hi def link reserved Keyword
hi def link types Type 
hi def link todo Todo 
hi def link slcomment Comment
hi def link mlcomment Comment 
hi def link intLit Constant
hi def link decLit Constant 
hi def link strLit String 
hi def link boolLit Constant

" end of file
