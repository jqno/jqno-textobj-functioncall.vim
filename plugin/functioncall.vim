if exists('g:loaded_textobj_functioncall')
    finish
endif
let g:loaded_textobj_functioncall=1

vnoremap <silent> if :<C-U>call <SID>FunctionCallTextObj()<CR>
onoremap <silent> if :<C-U>call <SID>FunctionCallTextObj()<CR>
vnoremap <silent> af :<C-U>call <SID>FunctionCallTextObj()<CR>
onoremap <silent> af :<C-U>call <SID>FunctionCallTextObj()<CR>

function! s:FunctionCallTextObj() abort
    let l:pattern = '\<[A-Za-z_][0-9A-Za-z_.]\+(.\{-})'
    let l:current_line = getline('.')
    let l:current_col = col('.')
    let l:text = 'x'
    let l:idx = 0
    let l:found = v:false
    while l:text !=# '' && l:idx >= 0 && !l:found
        let [l:text, l:start_col, l:end_col] = matchstrpos(l:current_line, l:pattern, l:idx)
        let l:start_col += 1
        let l:idx = l:end_col
        if l:start_col <= l:current_col && l:current_col <= l:end_col
            let l:found = v:true
        endif
    endwhile

    if l:start_col == -1
        return
    endif

    let l:buf_num = bufnr()
    let l:line = line('.')
    echom 'yeah: ' . l:line . ',' . l:start_col . ',' . l:end_col . ' = ' . l:text
    call setpos("'<", [l:buf_num, l:line, l:start_col, 0])
    call setpos("'>", [l:buf_num, l:line, l:end_col, 0])
    normal! gv
endfunction
