local status, telescope = pcall(require, 'telescope')
if not status then
  return
end

telescope.setup({
  file_ignore_patterns = { "node%_modules/.*" },
})

telescope.load_extension("fzf")
