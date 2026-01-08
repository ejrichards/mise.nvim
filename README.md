# MOVED

I have moved all my personal projects over to [tangled.org](https://tangled.org/ejri.dev/) and [sourcehut](https://sr.ht/~ejri/).

I will be adding redirects to a domain that I own so I'm not tied to one single git forge, so if you still want to use the plugin, you can use this url:

lazy.nvim
```lua
{
  "https://plugins.ejri.dev/mise.nvim",
  opts = {}
}
```

# mise.nvim

mise.nvim is a 3rd party Neovim plugin that compliments [mise](https://mise.jdx.dev/) by setting the environment variables when `:cd`-ing inside Neovim or using a GUI like [Neovide](https://neovide.dev/). If you run Neovim from a terminal and don't regularly use `:cd`, you probably don't need this plugin.
