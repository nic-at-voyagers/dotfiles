-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<Space>ms", function()
  require("typst-preview").start()
end, { desc = "Start Typst preview" })

vim.keymap.set("n", "<Space>mq", function()
  require("typst-preview").stop()
end, { desc = "Stop Typst preview" })

vim.keymap.set("n", "<Space>mn", function()
  require("typst-preview").next_page()
end, { desc = "Next page" })

vim.keymap.set("n", "<Space>mp", function()
  require("typst-preview").prev_page()
end, { desc = "Previous page" })

vim.keymap.set("n", "<Space>mr", function()
  require("typst-preview").refresh()
end, { desc = "Refresh preview" })

vim.keymap.set("n", "<Space>mgg", function()
  require("typst-preview").first_page()
end, { desc = "First page" })

vim.keymap.set("n", "<Space>mG", function()
  require("typst-preview").last_page()
end, { desc = "Last page" })
