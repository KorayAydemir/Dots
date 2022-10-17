require("koray")
vim.api.nvim_command('set autochdir')
vim.cmd [[
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my_snippets"]
]]
--[[ 
vim.api.nvim_create_autocmd('ColorScheme', {
    pattern = 'lua',
    callback = function() 
        vim.api.nvim_command('colorscheme tokyonight')
        print('got called')
end,})--]]
