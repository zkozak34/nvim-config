local setup, nvimtree = pcall(require, 'nvim-tree')
if not setup then
  return
end

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
   renderer = {
    icons = {
      glyphs = {
        folder = {
          arrow_closed = "", -- arrow when folder is closed
          arrow_open = "", -- arrow when folder is open
        },
      },
    },
  },
})
