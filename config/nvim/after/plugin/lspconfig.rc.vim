if !exists('g:lspconfig')
  finish
endif

nnoremap <silent> gd <cmd>lua vim.lsp.buf.definition()<CR>
nnoremap <silent> gD <cmd>lua vim.lsp.buf.declaration()<CR>
nnoremap <silent> gr <cmd>lua vim.lsp.buf.references()<CR>
nnoremap <silent> gi <cmd>lua vim.lsp.buf.implementation()<CR>
nnoremap <silent> <space>rn <cmd>lua vim.lsp.buf.rename()<CR>
nnoremap <silent> K <cmd>lua vim.lsp.buf.hover()<CR>
nnoremap <silent> <C-n> <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap <silent> <C-p> <cmd>lua vim.lsp.diagnostic.goto_next()<CR>

lua << EOF
local nvim_lsp = require('lspconfig')

local protocol = require'vim.lsp.protocol'

vim.lsp.set_log_level("debug")

local capabilities = require('cmp_nvim_lsp').update_capabilities(
  vim.lsp.protocol.make_client_capabilities()
)

nvim_lsp.tailwindcss.setup{}

nvim_lsp.ccls.setup {
  init_options = {
    cache = {
      directory = ".ccls-cache";
    };
  },
  filetypes = { "c" },
  capabilities = capabilities
}

nvim_lsp.cssls.setup {
  capabilities = capabilities,
}



--[[
nvim_lsp.pylsp.setup {
  settings = { 
    pyls = { 
      plugins = { 
        pylint = { enabled = false }
      } 
    } 
  },
  filetypes = { "python" }
}
--]]

nvim_lsp.tsserver.setup {
  filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
  capabilities = capabilities
}

nvim_lsp.dockerls.setup {
  capabilities = capabilities
}

nvim_lsp.java_language_server.setup {
  cmd = { "/Users/lukehalasy/Documents/java-language-server/dist/lang_server_mac.sh" },
  filetypes = { "java" },
  capabilities = capabilities
}

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
  vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    -- This sets the spacing and the prefix, obviously.
    virtual_text = {
      prefix = "»",
      spacing = 4,
    },
    signs = true,
    update_in_insert = false,
    }
)
EOF
