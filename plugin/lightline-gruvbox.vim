" File: lightline-gruvbox.vim
" Description: lightline.vim theme for gruvbox colorscheme
" Author: Jimmy Wang <whcjimmy@icloud.com>
" Source: https://github.com/whcjimmy/lightline-gruvbox
" Author: shinchu <shinchu@outlook.com>
" Source: https://github.com/shinchu/lightline-gruvbox

let s:is_dark=(&background == 'dark')

if !exists('g:gruvbox_contrast_dark')
    let g:gruvbox_contrast_dark='medium'
endif
if !exists('g:gruvbox_contrast_light')
    let g:gruvbox_contrast_light='medium'
endif

if s:is_dark
    let s:bg0    = ['#282828', 235]
    if g:gruvbox_contrast_dark == 'soft'
	let s:bg0 = ['#32302f', 236]
    elseif g:gruvbox_contrast_dark == 'hard'
	let s:bg0 = ['#1d2021', 234]
    endif

    let s:bg1    = ['#3c3856', 237]
    let s:bg2    = ['#504945', 239]
    let s:bg3    = ['#665c54', 241]
    let s:bg4    = ['#7c6f64', 243]
    let s:bg5    = ['#928374', 245]
    let s:red    = ['#fb4934', 167]
    let s:green  = ['#b8bb26', 142]
    let s:yellow = ['#fabd2f', 214]
    let s:blue   = ['#83a598', 109]
    let s:purple = ['#83a598', 175]
    let s:aqua   = ['#83a598', 108]
    let s:orange = ['#fe8019', 208]
else
    let s:bg0    = ['#fbf4c1', 229]
    if g:gruvbox_contrast_light == 'soft'
	let s:bg0 = ['#f2e5bc', 228]
    elseif g:gruvbox_contrast_light == 'hard'
	let s:bg0 = ['#f9f5d7', 230]
    endif

    let s:bg1    = ['#ebdbb2', 223]
    let s:bg2    = ['#d5c4a1', 250]
    let s:bg3    = ['#bdae93', 248]
    let s:bg4    = ['#a89984', 246]
    let s:bg5    = ['#928374', 244]
    let s:red    = ['#9d0006', 88]
    let s:green  = ['#79740e', 100]
    let s:yellow = ['#b57614', 136]
    let s:blue   = ['#076678', 24]
    let s:purple = ['#8f3f71', 96]
    let s:auqa   = ['#427b58', 66]
    let s:orange = ['#af3a03', 130]
endif

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}

let s:style = exists('g:lightline_gruvbox_style')
	    \ ? g:lightline_gruvbox_style
	    \ : ''

if s:style == 'plain'
    let s:p.normal.middle = [[s:bg3, s:bg4]]
    let s:p.normal.left = [[s:bg0, s:bg4], [s:bg0, s:bg4]]
    let s:p.normal.right = [[s:bg0, s:bg4], [s:bg0, s:bg4]]
else
    let s:p.normal.middle = [[s:bg4, s:bg1]]
    if s:style == 'hard_left'
	let s:p.normal.left = [[s:bg0, s:green], [s:bg0, s:bg4]]
    else
	let s:p.normal.left = [[s:bg0, s:green], [s:bg5, s:bg3]]
    endif
    let s:p.normal.right = [[s:bg0, s:bg4], [s:bg0, s:bg4]]
endif

let s:p.inactive.middle = [[s:bg4, s:bg2]]
let s:p.inactive.right = [s:p.inactive.middle[0], s:p.inactive.middle[0]]
let s:p.inactive.left = [s:p.inactive.middle[0], s:p.inactive.middle[0]]

let s:p.insert.left = [[s:bg0, s:blue], s:p.normal.left[1]]
let s:p.replace.left = [[s:bg0, s:red], s:p.normal.left[1]]
let s:p.visual.left = [[s:bg0, s:orange], s:p.normal.left[1]]

if s:style == 'plain'
    let s:p.tabline.middle = [[s:bg0, s:bg5]]
    let s:p.tabline.right = [[s:bg0, s:bg5]]
    let s:p.tabline.left = [[s:bg0, s:bg5]]
    let s:p.tabline.tabsel = [[s:bg5, s:bg0]]
else
    let s:p.tabline.middle = [[s:bg0, s:bg4]]
    let s:p.tabline.right = [[s:bg4, s:bg1], [s:bg0, s:bg4]]
    let s:p.tabline.left = [[s:bg4, s:bg1]]
    let s:p.tabline.tabsel = [[s:bg5, s:bg0]]
endif

let s:p.normal.error = [[s:bg0, s:red]]
let s:p.normal.warning = [[s:bg0, s:yellow]]

let g:lightline#colorscheme#gruvbox#palette = lightline#colorscheme#flatten(s:p)
