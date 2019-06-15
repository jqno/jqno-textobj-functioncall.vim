if exists('g:loaded_textobj_functioncall')
    finish
endif
let g:loaded_textobj_functioncall=1

call textobj#user#plugin('functioncall', {
    \   'function_call': {
    \     'pattern': '\<[0-9A-Za-z_.]\+(.\{-})',
    \     'select': ['af', 'if'],
    \     'scan': 'cursor',
    \   },
    \ })

