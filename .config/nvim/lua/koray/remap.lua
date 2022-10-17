local nnoremap = require('koray.keymap').nnoremap
-- netrwc
nnoremap('<leader>pv', '<cmd>Lex<CR> :vertical resize 30<CR>')
-- telescope
nnoremap("<C-p>", ":Telescope")
nnoremap("<leader>ps", function()
  require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ") })
end)
nnoremap("<C-p>", function()
  require('telescope.builtin').git_files()
end)
nnoremap("<Leader>pf", function()
  require('telescope.builtin').find_files()
end)

nnoremap("<leader>pw", function()
  require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
end)
nnoremap("<leader>pb", function()
  require('telescope.builtin').buffers()
end)
nnoremap("<leader>vh", function()
  require('telescope.builtin').help_tags()
end)
-- undotree
nnoremap('<F5>', ':UndotreeToggle<CR>')
