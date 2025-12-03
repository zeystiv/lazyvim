return {
  { "wakatime/vim-wakatime", lazy = false },

  "github/copilot.vim",
  config = function()
    -- Set key binding for accepting suggestion
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<C-g>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
  end,
}
