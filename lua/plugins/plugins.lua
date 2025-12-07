return {
  { "wakatime/vim-wakatime", lazy = false },

  {
    "zbirenbaum/copilot.lua",

    dependencies = {
      "copilotlsp-nvim/copilot-lsp",
    },

    cmd = "Copilot",       -- Add 'cmd' for lazy loading
    event = "InsertEnter", -- Trigger loading on 'InsertEnter'
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        keymap = {
          accept = "<C-g>", -- Map <C-g> to accept the suggestion
          -- You can also remap other actions if needed
          -- accept_word = false,
          -- accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
      -- Other Copilot options can be configured here
    },
    setup = function()
      -- Set the global variable to disable the default Tab mapping
      vim.g.copilot_no_tab_map = true
    end,
  },

  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {}
  },

  {
    "folke/trouble.nvim",
    cmd = "Trouble",
  },
}
