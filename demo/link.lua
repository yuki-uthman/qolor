
vim.cmd 'highlight Cyan guifg=Cyan'

local to_link = {
  Statement = 'Cyan',
  String    = 'Cyan',
}

function link(group, highlight)
    local cmd   = "highlight! link " .. group .. " " .. highlight
    -- print(cmd)
    vim.cmd(cmd)
end

for key, value in pairs(to_link) do
  link(key, value)
end
