local M = {}

M.general = {
  v = {
    ["J"] = {":m '>+1<CR>gv=gv", "Move Selection Down"},
    ["K"] = {":m '>-2<CR>gv=gv", "Move Selection Up"}
  },
  n = {
    ["C-d"] = {"<C-d>zz", "Move Down Centered"},
    ["C-u"] = {"<C-u>zz", "Move Up Centered"},
  }
}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>", "Toggle Breakpoint"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function ()
        require('dap-python').test_method()
      end
    }
  }
}

return M
