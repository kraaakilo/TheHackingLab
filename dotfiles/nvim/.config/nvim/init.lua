-- ensure that vim is required
if vim == nil then
  _G.vim = require("vim")
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
