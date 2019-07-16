local SystemMenu = require "sysmenu"
local InputHandler = require "inputhandler"
local Viewport = require "viewport"

local stage = nil
local stageStack = {}
local inputHandler = nil
local viewport = nil

function love.load()
	love.mouse.setVisible(false)
	stage = SystemMenu:new()
	inputHandler = InputHandler:new()
	viewport = Viewport:new()
end

function love.update(dt)
	if not stage:update(dt) then
		stage = stageStack[#stageStack]
		stageStack[#stageStack] = nil
	end
end

function love.draw()
	viewport:draw(stage)
end

function love.keypressed(key)
	if key == 'f12' then
		love.event.quit()
		return
	end

	stage:keyPressed(key)
end

function love.joystickpressed(j, b)
	local name = j:getName()
	if not inputHandler:isConfigured(name) then
		stageStack[#stageStack+1] = stage
		stage = inputHandler.stage
		return
	end
	stage:buttonDown(inputHandler:getButton(name, b))
end
