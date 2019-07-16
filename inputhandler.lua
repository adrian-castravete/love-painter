local InputHandler = {}
InputHandler.__index = InputHandler

local InputHandlerStage = {}
InputHandlerStage.__index = InputHandlerStage

function InputHandler:new()
	return setmetatable({
		stage = InputHandlerStage:new()
	}, self)
end


function InputHandlerStage:new()
	return setmetatable({
	}, self)
end

return InputHandler
