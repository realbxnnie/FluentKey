# FluentKey
A Key System framework for Roblox Scripts.

**How to use it?**
```luau
local FluentKey = loadstring(game:HttpGet("https://raw.githubusercontent.com/realbxnnie/FluentKey/refs/heads/main/source.luau"))()
FluentKey:MakeWindow({
	Title = "Window Title", -- optional
	Key = "Key123", -- important
	KeyCorrectAction = function()
		print("The key is correct!!!")
	end,  -- important
	Note = "idk", -- optional
	GrabKeyFromRaw = false -- important
})
```
