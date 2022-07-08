-- Basic settings
local options = {
  syntax = "on",                -- Enable syntax highlighting
  number = true,                -- Show line numbers
  numberwidth = 1,              -- Show line numbers with 1 digit
  relativenumber = true,        -- Show relative line numbers
  mouse = "a",                  -- Enable mouse support
  clipboard = "unnamedplus",    -- Enable clipboard support
  showcmd = true,               -- Show command in status line
  ruler = true,                 -- Show a ruler
  encoding = "utf-8",           -- Set encoding
  showmatch = true,             -- Show matching brackets
  shiftwidth = 4,               -- Set shiftwidth to 4
  tabstop = 4,                  -- Set tabstop to 4
  softtabstop = 0,              -- Disable softtabstop
  smartindent = true,           -- Make indent smart again
  autoindent = true,            -- Enable autoindent
  expandtab = true,             -- Expand tabs to spaces
  laststatus = 3,               -- Show status bar
  showmode = false,             -- Disable showmode
  scrolloff = 8,                -- Set scrolloff to 8
  sidescrolloff = 8,            -- Set sidescrolloff to 8
  wrap = false,                 -- Disable wrapping
  cursorline = true,            -- Highlight current line
  cmdheight = 2,                -- More spce for messages
  signcolumn = "auto:9",        -- Show signs in the right side of the screen
  hidden = true,                -- Hide buffers but let them open
  backup = false,               -- Disable backup files
  swapfile = false,             -- Disable swapfile
  writebackup = false,          -- Disable writebackup
  updatetime = 300,             -- Set update time to 300ms
  shortmess = "c",              -- Show messages in the status line
  compatible = false,           -- Disable vim compatibility
  hlsearch = false,             -- Dont highlight matches
  incsearch = true,             -- Incremental searching
  ignorecase = true,            -- Searches are case insensitive...
  smartcase = true,             -- ... Unless they contain at least one capital letter
  splitright = true,            -- Split buffers to the right
  splitbelow = true,            -- Split buffers below
  emoji = true,                 -- Enable emojis
  lazyredraw = true,            -- Dont redraw the whole screen
  colorcolumn = "81",           -- Write better code
  termguicolors = true,         -- Use 256 color palette
  background = "dark",          -- Set dark colorschemes
}

for key, value in pairs(options) do
  vim.opt[key] = value
end

vim.opt.iskeyword:append "-"    -- This-is-one-word
