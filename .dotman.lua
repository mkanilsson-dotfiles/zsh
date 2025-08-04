local M = {}

M.post_install = function()
    symlink(".zshrc", "$HOME/.zshrc")
end

return M
