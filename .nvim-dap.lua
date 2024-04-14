local dap = require("dap")

dap.adapters.lldb = {
    type = "executable",
    command = "/opt/homebrew/opt/llvm/bin/lldb-vscode", -- adjust as needed
    name = "lldb",
}

dap.configurations.rust = {
    {
        name = "mini-redis",
        type = "lldb",
        request = "launch",
        program = function()
            return vim.fn.getcwd() .. "/target/debug/mini-redis-server"
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}
