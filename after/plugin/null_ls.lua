local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettierd,
    --.with({extra_args = { "--single-quote", "--jsx-single-quote"}}),
    null_ls.builtins.diagnostics.eslint_d.with({
        only_local = 'node_modules/.bin',
        diagnostics_format = '[eslint] #{m}\n(#{c})'
     }),
    null_ls.builtins.diagnostics.fish
  }
})

