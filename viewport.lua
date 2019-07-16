local Viewport = {}
Viewport.__index = Viewport

function Viewport:new()
	local o = {
		width = 320,
		height = 200,
		ratio = 1.2,
	}
	return setmetatable(o, self)
end

function Viewport:draw(stage)
	stage:draw()
end

return Viewport
