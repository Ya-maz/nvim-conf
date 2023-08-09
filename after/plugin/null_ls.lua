local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettierd,
        --null_ls.builtins.formatting.golines,
        --.with({extra_args = { "--single-quote", "--jsx-single-quote"}}),
        null_ls.builtins.diagnostics.fish,
        null_ls.builtins.diagnostics.eslint_d.with({
            only_local = 'node_modules/.bin',
            diagnostics_format = '[eslint] #{m}\n(#{c})'
        }),
    },
})
