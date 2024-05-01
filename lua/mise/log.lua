local log = {}

function log.info(message)
	vim.notify("mise.nvim: " .. message, vim.log.levels.INFO, { title = "mise.nvim" });
end

function log.warn(message)
	vim.notify("mise.nvim: " .. message, vim.log.levels.WARN, { title = "mise.nvim" });
end

function log.error(message)
	vim.notify("mise.nvim: " .. message, vim.log.levels.ERROR, { title = "mise.nvim" });
end

return log
