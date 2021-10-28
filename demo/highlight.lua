
local groups = {
  Statement = {
    fg  = 'LightBlue',
    gui = 'bold,italic'
  },
}

function highlight(group, table)
  -- group = Statement
  -- table = { fg = 'LightBlue', gui = 'bold,italic'  }

  local fg  = table.fg    and table.fg    or "NONE"
  local bg  = table.bg    and table.bg    or "NONE"
  local gui = table.gui   and table.gui   or "NONE"

  local cmd = "highlight " .. group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. gui
  -- print(cmd)
  vim.cmd(cmd)
end

for key, value in pairs(groups) do
  highlight(key, value)
end
