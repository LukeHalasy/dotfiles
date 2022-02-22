if !exists('g:loaded_telescope') | finish | endif

nnoremap  <silent> ;f <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap  <silent> ;r <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap  <silent> ;b <cmd>lua require('telescope.builtin').file_browser()<cr>
nnoremap  <silent> ;t <cmd>lua require('telescope.builtin').tags()<cr>
nnoremap  <silent> ;m <cmd>lua require('telescope.builtin').marks()<cr>
nnoremap  <silent> ;d <cmd>lua require('telescope.builtin').lsp_definition()<cr>
nnoremap  <silent> \e <cmd>lua require('telescope.builtin').lsp_workspace_diagnostics()<cr>
nnoremap  <silent> \ts <cmd>lua require('telescope.builtin').treesitter()<cr>
nnoremap <silent> \\ <cmd>Telescope buffers<cr>
nnoremap <silent> ;; <cmd>Telescope help_tags<cr>
nnoremap <silent> ;vrc <cmd>lua require('lhalasy.telescope').search_dotfiles()<cr>

lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  file_sorter = require('telescope.sorters').get_fzy_sorter,
  prompt_prefix = ' >',

  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close,
        ["ss"] = actions.select_horizontal,
        ["sv"] = actions.select_vertical,
        ["<tab>"] = actions.toggle_selection,
        ["qf"] = actions.send_selected_to_qflist + actions.open_qflist
      }
    },
  },
  extensions = {
    fzy_native = {
      override_generic_sorter = false,
      override_file_sorter = true,
    }
  }
}
require('telescope').load_extension('fzy_native')

EOF

