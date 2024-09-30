-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  { 'ngemily/vim-vp4',
      lazy = true,
      event = "BufModifiedSet",
      cmd = {"Vp4Diff", "Vp4Annotate"},
  },
  { 'AndrewRadev/linediff.vim',
      lazy = true,
      cmd = "Linediff",
  },
  { 'junegunn/vim-easy-align',
      lazy = true,
      cmd="EasyAlign"
  },
  {
    'pteroctopus/faster.nvim',
    opts = {
      behaviors = {
        bigfile = {
          features_disabled = {
            "illuminate", "matchparen", "lsp", "treesitter", "indent_blankline",
            "vimopts", "syntax", "filetype", "linediff", "vim-vp4", "vim-easy-align", "telescope" 
          },
          filesize = 3,
        }
      },
    },
  },
  --{
  --   "m4xshen/hardtime.nvim",
  --   dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  --   opts = {
  --     max_count = 10,
  --     restriction_mode = "hint",
  --   }
  --},
  {
     "gbprod/substitute.nvim",
     config = function()
        vim.keymap.set("n", "s", require('substitute').operator, { noremap = true })
        vim.keymap.set("n", "ss", require('substitute').line, { noremap = true })
        vim.keymap.set("n", "S", require('substitute').eol, { noremap = true })
        vim.keymap.set("x", "s", require('substitute').visual, { noremap = true })
     end,
     opts = {
         -- your configuration comes here
         -- or leave it empty to use the default settings
         -- refer to the configuration section below
     }
   },
}
