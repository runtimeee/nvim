" ==================== Auto load for first time uses ====================
if empty(glob($HOME.'/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo $HOME/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


source $HOME/.config/nvim/custom/_machine_specific.vim

for i in systemlist("ls ~/.config/nvim/custom/*.vim")
	execute "source ".i
endfor 

for i in systemlist("ls ~/.config/nvim/custom/plugins/*.vim")
	execute "source ".i
endfor 





" ==================== Necessary Commands to Execute ====================
exec "nohlsearch"



lua <<EOF

require "conf.toggleterm"
require "conf.fzf-lua"
require "conf.nvim-scrollbar"
require "conf.nvim-treesitter"

EOF

