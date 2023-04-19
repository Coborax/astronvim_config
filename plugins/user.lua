local Path = require('plenary.path')
return {
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    event = "User AstroFile",
  },
  {
    "Shatur/neovim-tasks",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      default_params = {
        cmake = {
          cmd = 'cmake',
          build_dir = tostring(Path:new('{cwd}', 'build', '{os}-{build_type}')), -- Build directory. The expressions `{cwd}`, `{os}` and `{build_type}` will be expanded with the corresponding text values. Could be a function that return the path to the build directory.
          build_type = 'Debug', -- Build type, can be changed using `:Task set_module_param cmake build_type`.
          dap_name = 'lldb', -- DAP configuration name from `require('dap').configurations`. If there is no such configuration, a new one with this name as `type` will be created.
          args = { -- Task default arguments.
            configure = { '-D', 'CMAKE_EXPORT_COMPILE_COMMANDS=1', '-G', 'Xcode' },
          },
        }
      }
    },
    event = "UIEnter",
  },
  {
    "p00f/clangd_extensions.nvim",
    opts = {}
  },
}
