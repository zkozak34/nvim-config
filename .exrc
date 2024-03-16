let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <F3> :MaximizerToggle
inoremap <C-W> u
inoremap <C-U> u
noremap <silent>  :TmuxNavigateLeft
noremap <silent> <NL> :TmuxNavigateDown
noremap <silent>  :TmuxNavigateUp
noremap <silent>  :TmuxNavigateRight
noremap <silent>  :TmuxNavigatePrevious
nnoremap  tp :tabp
nnoremap  tn :tabn
nnoremap  tx :tabclose
nnoremap  to :tabnew
nnoremap  sx :close
nnoremap  se =
nnoremap  sh s
nnoremap  sv v
xnoremap # y?\V"
omap <silent> % <Plug>(MatchitOperationForward)
xmap <silent> % <Plug>(MatchitVisualForward)
nmap <silent> % <Plug>(MatchitNormalForward)
nnoremap & :&&
xnoremap * y/\V"
nnoremap Y y$
omap <silent> [% <Plug>(MatchitOperationMultiBackward)
xmap <silent> [% <Plug>(MatchitVisualMultiBackward)
nmap <silent> [% <Plug>(MatchitNormalMultiBackward)
omap <silent> ]% <Plug>(MatchitOperationMultiForward)
xmap <silent> ]% <Plug>(MatchitVisualMultiForward)
nmap <silent> ]% <Plug>(MatchitNormalMultiForward)
xmap a% <Plug>(MatchitVisualTextObject)
xmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
omap <silent> g% <Plug>(MatchitOperationBackward)
xmap <silent> g% <Plug>(MatchitVisualBackward)
nmap <silent> g% <Plug>(MatchitNormalBackward)
nnoremap sm :MaximizerToggle
nnoremap sx :close
nnoremap se =
nnoremap sh s
nnoremap sv v
nnoremap s <Nop>
nnoremap t<Left> :tabp
nnoremap t<Right> :tabn
nnoremap t <Nop>
nnoremap tp :tabp
nnoremap tn :tabn
nnoremap tx :tabclose
nnoremap to :tabnew
nnoremap <Plug>PlenaryTestFile :lua require('plenary.test_harness').test_file(vim.fn.expand("%:p"))
vnoremap <silent> <F3> :MaximizerTogglegv
nnoremap <silent> <F3> :MaximizerToggle
noremap <silent> <C-Bslash> :TmuxNavigatePrevious
noremap <silent> <C-K> :TmuxNavigateUp
noremap <silent> <C-J> :TmuxNavigateDown
noremap <silent> <C-H> :TmuxNavigateLeft
xnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(netrw#GX(),netrw#CheckIfRemote(netrw#GX()))
xmap <silent> <Plug>(MatchitVisualTextObject) <Plug>(MatchitVisualMultiBackward)o<Plug>(MatchitVisualMultiForward)
onoremap <silent> <Plug>(MatchitOperationMultiForward) :call matchit#MultiMatch("W",  "o")
onoremap <silent> <Plug>(MatchitOperationMultiBackward) :call matchit#MultiMatch("bW", "o")
xnoremap <silent> <Plug>(MatchitVisualMultiForward) :call matchit#MultiMatch("W",  "n")m'gv``
xnoremap <silent> <Plug>(MatchitVisualMultiBackward) :call matchit#MultiMatch("bW", "n")m'gv``
nnoremap <silent> <Plug>(MatchitNormalMultiForward) :call matchit#MultiMatch("W",  "n")
nnoremap <silent> <Plug>(MatchitNormalMultiBackward) :call matchit#MultiMatch("bW", "n")
onoremap <silent> <Plug>(MatchitOperationBackward) :call matchit#Match_wrapper('',0,'o')
onoremap <silent> <Plug>(MatchitOperationForward) :call matchit#Match_wrapper('',1,'o')
xnoremap <silent> <Plug>(MatchitVisualBackward) :call matchit#Match_wrapper('',0,'v')m'gv``
xnoremap <silent> <Plug>(MatchitVisualForward) :call matchit#Match_wrapper('',1,'v'):if col("''") != col("$") | exe ":normal! m'" | endifgv``
nnoremap <silent> <Plug>(MatchitNormalBackward) :call matchit#Match_wrapper('',0,'n')
nnoremap <silent> <Plug>(MatchitNormalForward) :call matchit#Match_wrapper('',1,'n')
noremap <silent> <C-L> :TmuxNavigateRight
inoremap  u
inoremap  u
let &cpo=s:cpo_save
unlet s:cpo_save
set clipboard=unnamedplus
set expandtab
set helplang=tr
set ignorecase
set runtimepath=~/.config/nvim,/opt/homebrew/etc/xdg/nvim,/etc/xdg/nvim,~/.local/share/nvim/site,~/.local/share/nvim/site/pack/packer/start/packer.nvim,~/.local/share/nvim/site/pack/*/start/*,/opt/homebrew/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/opt/homebrew/Cellar/neovim/0.9.5/share/nvim/runtime,/opt/homebrew/Cellar/neovim/0.9.5/share/nvim/runtime/pack/dist/opt/matchit,/opt/homebrew/Cellar/neovim/0.9.5/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/opt/homebrew/share/nvim/site/after,~/.local/share/nvim/site/after,/etc/xdg/nvim/after,/opt/homebrew/etc/xdg/nvim/after,~/.config/nvim/after,~/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator,~/.local/share/nvim/site/pack/packer/start/vim-maximizer,~/.local/share/nvim/site/pack/packer/start/plenary.nvim,~/.local/share/nvim/site/pack/packer/start/nvim-tree.lua
set shiftwidth=2
set smartcase
set splitbelow
set splitright
set tabstop=2
set termguicolors
set window=57
" vim: set ft=vim :
