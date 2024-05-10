require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
 ensure_installed = {'c', 'cpp', 'lua', 'python', 'cmake'},

  sync_install = false,

  auto_install = true,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    additional_vim_regex_highlighting = false,
  },
}
