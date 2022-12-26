local M = {}

local is_nvim = vim.fn.has("nvim") == 1

local notified = {}

function M.clear()
  notified = {}
end

---@param msg string|string[]
---@param level integer
function M.notify(msg, level)
  if type(msg) == "table" then
    msg = table.concat(
      vim.tbl_filter(function(line)
        return line or false
      end, msg),
      "\n"
    )
  end

  if not notified[msg] then
    vim.notify(msg, level, {
      on_open = function(win)
        vim.wo[win].conceallevel = 3
        vim.wo[win].concealcursor = ""
        vim.wo[win].spell = false
        local buf = vim.api.nvim_win_get_buf(win)
        vim.bo[buf].filetype = "markdown"
      end,
      title = "nightfox.nvim",
    })

    notified[msg] = true
  end
end

function M.error(msg)
  M.notify(msg, vim.log.levels.ERROR)
end

function M.warn(msg)
  M.notify(msg, vim.log.levels.WARN)
end

function M.info(msg)
  M.notify(msg, vim.log.levels.INFO)
end

return M
