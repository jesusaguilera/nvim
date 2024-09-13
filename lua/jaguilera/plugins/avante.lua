--[[ local status, imgclip = pcall(require, "img-clip")
if not status then
  return
end

local status2, copilot = pcall(require, "copilot")
if not status2 then
  return
end

local status3, renderMarkdown = pcall(require, "render-markdown")
if not status3 then
  return
end

local status4, avanteLib = pcall(require, "avante_lib")  -- Correctly requiring 'avante_lib'
if not status4 then
  return
end

local status5, avante = pcall(require, "avante")
if not status5 then
  return
end

imgclip.setup({
  -- Your img-clip config here
})

copilot.setup({
  -- Your copilot config here
})

renderMarkdown.setup({
  -- Your render-markdown config here
})

avanteLib.load()  -- Using avanteLib to load the library

avante.setup({
  -- Your avante config here
}) ]]

-- deps:
require('img-clip').setup ({
  -- use recommended settings from above
})
require('claude').setup ({
  -- use recommended settings from above
})
require('render-markdown').setup ({
  -- use recommended settings from above
})
require('avante_lib').load()
require('avante').setup ({
  -- Your config here!
})
