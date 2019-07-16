local SystemMenu = {}
SystemMenu.__index = SystemMenu

function SystemMenu:new()
	local o = {}
	return setmetatable(o, self)
end

function SystemMenu:update(dt)
	return true
end

function SystemMenu:draw()
end

function SystemMenu:keyDown(key)
end

function SystemMenu:keyUp(key)
end

function SystemMenu:buttonDown(b)
end

function SystemMenu:buttonUp(b)
end

return SystemMenu
