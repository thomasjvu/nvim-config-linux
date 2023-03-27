vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Quickjump to Nvim Config
vim.keymap.set("n", "<leader>co", ":e ~/.config/nvim<CR>")

-- Open Current File in Browser
vim.keymap.set("n", "<leader><C-o>", ":!%:p<CR>")

-- Open Current File in Directory
vim.keymap.set("n", "<leader>go", ":!open %:p:h<CR>")

-- (Visual Mode) Rearrange Code Block
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Greatest Remap Ever ?
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Next Greatest Remap Ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "Q", "<nop>")
-- vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Prettier
vim.keymap.set("n", "<leader>pr", ":Prettier<CR>")

-- Emmett
vim.g.user_emmet_leader_key = ","

-- Zen Mode
vim.keymap.set("n", "<space>z", ":ZenMode<CR>")

-- Markdown Preview
vim.keymap.set("n", "<leader>md", "<Plug>MarkdownPreviewToggle")

-- Terminal
vim.keymap.set("n", "<leader>te", ":terminal<CR>")
