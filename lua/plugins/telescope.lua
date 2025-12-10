return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
      {
        "<leader>fw",
        function()
          require("telescope.builtin").live_grep({
            additional_args = function()
              return { "--hidden" } -- optional: search hidden files
            end,
          })
        end,
        desc = "Grep in Project",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,

        -- Add quickfix mappings
        mappings = {
          i = {
            ["<C-q>"] = function(...)
              return require("telescope.actions").send_to_qflist(...)
            end,
          },
          n = {
            ["<C-q>"] = function(...)
              return require("telescope.actions").send_to_qflist(...)
            end,
          },
        },
      },
    },
  },
}
