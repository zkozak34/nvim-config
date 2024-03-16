local status, lualine = pcall(require, 'lualine')
if not status then
  return
end

lualine.setup({
  options = {
    icons_enabled = true,
    theme = 'nightfly',
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
})
