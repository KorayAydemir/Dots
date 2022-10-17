vim.opt.list = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#625615 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#da70d6 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#1c8fff gui=nocombine]]

require("indent_blankline").setup {
  -- for example, context is off by default, use this to turn it on
  show_current_context = false,
  show_current_context_start = true,
  space_char_blankline = " ",

  char_highlight_list = {

    "IndentBlanklineIndent1",
    "IndentBlanklineIndent2",
    "IndentBlanklineIndent3",
  }
}
