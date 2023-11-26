return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.kanagawa-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-baby" },

  { import = "astrocommunity.pack.angular" },
  { import = "astrocommunity.pack.typescript" },

  { import = "astrocommunity.completion.copilot-lua-cmp" },
}
