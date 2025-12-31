# mise.nvim

mise.nvim is a 3rd party Neovim plugin that compliments [mise](https://mise.jdx.dev/) by setting the environment variables when `:cd`-ing inside Neovim or using a GUI like [Neovide](https://neovide.dev/). If you run Neovim from a terminal and don't regularly use `:cd`, you probably don't need this plugin.

## Setup

lazy.nvim
```lua
{
  "ejrichards/mise.nvim",
  opts = {}
}
```

## Configuration

Defaults
```lua
{
  -- Executable to run
  run = 'mise',
  -- Args for the executable, set to "env --json --quiet" to ignore mise warnings
  args = 'env --json',
  -- Set to override the base PATH
  initial_path = vim.env.PATH,
  -- Removes env vars set by mise when navigating away from a directory
  unset_vars = true,
  -- Loads env vars when setup() is called, don't need this if mise is hooked into your shell
  load_on_setup = true,
  -- Force a run when using an unsupported executable
  force_run = false,
  -- Scopes to update env vars on (e.g. { "global", "tabpage", "window" })
  cd_scope = { "global" },
}
```

## Commands

- `:Mise` - Print vars for pwd

## Limitations

The base path will be the `$PATH` env var on load. If Neovim launched from the shell where mise has already loaded some paths, this plugin cannot distinguish which parts of the path were loaded by mise, so they will always be included. This can be overridden using the `initial_path` in the setup config if you run into issues.

TODO: Test whether mise will deal with this case correctly
