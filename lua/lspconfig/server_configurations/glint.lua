local util = require 'lspconfig.util'

local bin_name = 'glint'
local cmd = { bin_name }

if vim.fn.has 'win32' == 1 then
  cmd = { 'cmd.exe', '/C', bin_name }
end

return {
  default_config = {
    cmd = cmd,
    filetypes = { 'typescript.glimmer', 'javascript.glimmer' },
    root_dir = util.root_pattern('package.json', '.glintrc*'),
    init_options = {
      config = {
      },
    },
  },
  docs = {
    description = [[
https://github.com/typed-ember/glint/

Glint language server(glint)
`glint` can be installed via `npm`:
```sh
npm install -g @glint/core
```
]],
    default_config = {
      root_dir = [[root_pattern("package.json", ".glintrc.yml")]],
    },
  },
}
