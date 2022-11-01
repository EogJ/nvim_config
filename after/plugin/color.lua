-- Example config in Lua
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.o.background = "light"

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { border = "blue", hint = "orange", error = "#ff0000" }
vim.g.tokyonight_style = "storm"

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
