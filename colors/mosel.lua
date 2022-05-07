-- uncomment for development
-- allows to reload the colorscheme with :colorscheme without restart
package.loaded["mosel"] = nil
package.loaded["mosel.util"] = nil
package.loaded["mosel.colors"] = nil
package.loaded["mosel.groups"] = nil

vim.cmd("hi clear")
vim.cmd("set background=dark")

require("mosel").apply()

vim.g.colors_name = "mosel"
