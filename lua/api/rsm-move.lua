local home = os.getenv 'HOME'
local projects = home .. '/projects'
local mono = projects .. '/rsm-monorepo'
local domains = mono .. '/domains'
local config = home .. '/.config/nvim'

vim.api.nvim_create_user_command('Mono', function()
  vim.cmd('cd ' .. mono)
end, {})

vim.api.nvim_create_user_command('Uni', function()
  vim.cmd('cd ' .. domains .. '/university-ts')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Product', function()
  vim.cmd('cd ' .. domains .. '/product-ts')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Identity', function()
  vim.cmd('cd ' .. domains .. '/identity-ts')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Delivery', function()
  vim.cmd('cd ' .. domains .. '/delivery-ts')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Billing', function()
  vim.cmd('cd ' .. domains .. '/billing-ts')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Graphs', function()
  vim.cmd('cd ' .. domains .. '/graphs')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Adopt', function()
  vim.cmd('cd ' .. domains .. '/adopt-ts')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Subs', function()
  vim.cmd('cd ' .. domains .. '/subgraphs')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Shelf', function()
  vim.cmd('cd ' .. projects .. '/shelf-app')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Manager', function()
  vim.cmd('cd ' .. projects .. '/manager-app')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Scripts', function()
  vim.cmd('cd ' .. home .. '/scripts')
end, {})

vim.api.nvim_create_user_command('Orders', function()
  vim.cmd('cd ' .. projects .. '/orders-service')
  vim.cmd 'edit package.json'
end, {})

vim.api.nvim_create_user_command('Config', function()
  vim.cmd('cd ' .. config)
  vim.cmd 'edit init.lua'
end, {})

vim.api.nvim_create_user_command('Tm', function()
  vim.cmd('cd ' .. home)
  vim.cmd 'edit .tmux.conf'
end, {})

vim.api.nvim_create_user_command('Zs', function()
  vim.cmd('cd ' .. home)
  vim.cmd 'edit .zshrc'
end, {})

vim.api.nvim_create_user_command('Note', function()
  local current_date = os.date '%Y-%m-%d'
  local file = current_date .. '.txt'
  vim.cmd('cd ' .. home .. '/notes')
  os.execute('touch ' .. file)
  vim.cmd('edit ' .. file)
end, {})

-- vim.api.nvim_create_user_command('Aws', function(opts)
--   local args = vim.split(opts.args, ' ')
--   local env = args[1]
--   local accessCode = args[2]
--
--   if env == '' or accessCode == '' then
--     print 'Must provide a env'
--     return
--   end
--   os.execute('. set-creds ' .. env .. ' ' .. accessCode)
-- end, { nargs = '*' })
