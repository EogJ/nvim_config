local nnoremap = require("eogj.keymap").nnoremap

nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<cr>")
nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- Jump to start and end of line using the home row keys 
nnoremap("H", "^")
nnoremap("L", "$")

-- Move by line
nnoremap("j", "gj")
nnoremap("k", "gk")

-- Quicker window movement
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-l>", "<C-w>l")

-- Test Mappings
nnoremap("<leader>t", "<cmd>:TestFile<cr>")
nnoremap("<leader>s", "<cmd>:TestNearest<cr>")
nnoremap("<leader>l", "<cmd>:TestLast<cr>")
nnoremap("<leader>a", "<cmd>:TestSuite<cr>")

nnoremap("<leader>gb", "<cmd>:GoBuild<cr>")
nnoremap("<leader>gr", "<cmd>:GoRun<cr>")
nnoremap("<leader>gd", "<cmd>:GoDef<cr>")

-- Open / close neoterm
nnoremap("<leader>oo", "<cmd>:Topen<cr>")
nnoremap("<leader>cc", "<cmd>:Tclose<cr>")

-- File Explorer
nnoremap("<leader>nt", "<cmd>:NERDTree<cr>")

-- Notes
nnoremap("<leader>nn", "<cmd>:sp ~/notes/programming_notes.md<cr>")

-- TimeLog
nnoremap("<leader>tl", "<cmd>:sp ~/notes/time_log/" .. os.date("%d") .. "-" .. os.date("%m") .. "-" .. os.date("%Y") .. ".md<cr>")

-- COC Tab autocompletion
-- vim.cmd([[
--   function! s:check_back_space() abort
--     let col = col('.') - 1
--     return !col || getline('.')[col - 1]  =~ '\s'
--   endfunction

--   " Insert <tab> when previous text is space, refresh completion if not.
--   inoremap <silent><expr> <TAB>
-- 	\ coc#pum#visible() ? coc#pum#next(1):
-- 	\ <SID>check_back_space() ? "\<Tab>" :
-- 	\ coc#refresh()
--   inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

-- ]])


-- Use Neoterm for tests
vim.api.nvim_exec(
[[
let test#strategy = "neoterm"
let g:neoterm_callbacks = {}
 function! g:neoterm_callbacks.before_new()
 let g:neoterm_default_mod = 'belowright'
 endfunction
 let g:neoterm_autoscroll = 1

 noremap <leader>y "*y
 noremap <leader>p "*p


 tnoremap <Esc> <C-\><C-n>

syntax enable
filetype plugin indent on

 ]], true)



vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>",
  {silent = true, noremap = true}
)
vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
  {silent = true, noremap = true}
)

