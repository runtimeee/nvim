" ==================== Terminal Behaviors ====================
let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
tnoremap <C-N> <C-\><C-N>
tnoremap <C-O> <C-\><C-N><C-O>

if has("mac")
	autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><C-u> <Cmd>exe v:count1 . "ToggleTerm"<CR>
	nnoremap <silent><C-u> <Cmd>exe v:count1 . "ToggleTerm"<CR>
	inoremap <silent><C-u> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>
else
	autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
	nnoremap <silent><A-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
	inoremap <silent><A-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>

endif

