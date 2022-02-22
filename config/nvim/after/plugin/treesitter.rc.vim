if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup{
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  },
  highlight = {
    enable = true,
  },
  playground = {
    enable = true
  },
  textobjects = {
    select = {
      enable = true,
      -- Automatically jump forward to textobj, similar to targets.vim 
      lookahead = true,
      keymaps = {
        -- You can use the capture groups defined in textobjects.scm
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner"
      }
    },
    move = {
      enable = true,
      set_jumps = true, 
      goto_next_start = {
        [']m'] = '@function.outer',
        [']]'] = '@class.outer'
      },
      goto_next_end = {
        [']M'] = '@function.outer',
        [']['] = '@class.outer'
      },
      goto_previous_start = {
        ['[m'] = '@function.outer',
        ['[['] = '@class.outer'
      },
      goto_previous_end = {
        ['[M'] = '@function.outer',
        ['[]'] = '@class.outer'
      }
    }
  },
  ensure_installed = {
    "tsx",
    "toml",
    "c",
    "java",
    "json",
    "yaml",
    "html",
    "css"
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
EOF
