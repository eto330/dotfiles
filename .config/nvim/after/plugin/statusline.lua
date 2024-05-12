-- Define highlight groups for different modes
vim.api.nvim_set_hl(0, "NormalMode", { fg = "#82B847", bg = "#333333", bold = true })
vim.api.nvim_set_hl(0, "InsertMode", { fg = "#333333", bg = "#838996", bold = true })
vim.api.nvim_set_hl(0, "VisualMode", { fg = "#333333", bg = "#838996", bold = true })
vim.api.nvim_set_hl(0, "CommandMode", { fg = "#333333", bg = "#838996", bold = true })
vim.api.nvim_set_hl(0, "TerminalMode", { fg = "#333333", bg = "#838996", bold = true })
vim.api.nvim_set_hl(0, "ReplaceMode", { fg = "#333333", bg = "#838996", bold = true })
vim.api.nvim_set_hl(0, "FilePath", { fg = "#333333", bg = "#838996" }) -- New highlight group for file path
vim.api.nvim_set_hl(0, "StatusInfo", { fg = "#333333", bg = "#838996" }) -- New highlight group for status info

-- Define the components for the status line
local mode_colors = {
  n = "%#NormalMode#",
  i = "%#InsertMode#",
  v = "%#VisualMode#",
  V = "%#VisualMode#",
  [""] = "%#VisualMode#",
  c = "%#CommandMode#",
  s = "%#TerminalMode#",
  S = "%#TerminalMode#",
  [""] = "%#TerminalMode#",
  R = "%#ReplaceMode#",
  r = "%#ReplaceMode#",
  ["!"] = "%#ReplaceMode#",
}

local mode_texts = {
  n = "[Normal]",
  i = "[Insert]",
  v = "[Visual]",
  V = "[Insert]",
  [""] = "[Visual block]",
  c = "[Command]",
  s = "[Terminal]",
  S = "[Terminal]",
  [""] = "[Terminal]",
  R = "[Replace]",
  r = "[Replace]",
  ["!"] = "[Replace]",
}

-- Function to get the status line
_G.get_statusline = function()
    local mode = vim.api.nvim_get_mode().mode
    local mode_color = mode_colors[mode] or "%#Normal#"
    local mode_text = mode_texts[mode] or ""

    -- Get the full file path
    local file_path = vim.fn.expand("%:p")

    -- Calculate the available space for the file path
    local available_space = vim.o.columns - #mode_text - 30

    -- Truncate the file path if it's too long
    if #file_path > available_space then
        file_path = "..." .. string.sub(file_path, -available_space + 3)
    end

    -- Get the percentage of the file
    local file_percentage = math.floor(vim.fn.line(".") * 100 / vim.fn.line("$")) .. "%%"

    -- Format the status line
    return table.concat({
      mode_color,
      mode_text,
      " %#Normal#%#FilePath#%=                                   ",
      file_path,
      "          %#Normal#%=%#StatusInfo#         ",
      file_percentage,
      "%l/%L",
      "%#Normal#",
})
end

vim.opt_local.statusline = "%{%v:lua.get_statusline()%}"
