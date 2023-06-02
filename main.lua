local Unit = require('unit')
local Vec = require('vec')

local character
local linesize = 10

function love.load()
    local x = love.graphics.getWidth()/2
    local y = love.graphics.getHeight()/2
    character = Unit:new(x, y, 10, 10, 50)
end


function love.update(dt)
   if love.keyboard.isDown('w') then
    character.pos.y = character.pos.y - character.vel.y
   end
   if love.keyboard.isDown('a') then
    character.pos.x = character.pos.x - character.vel.x
   end
   if love.keyboard.isDown('s') then
    character.pos.y = character.pos.y + character.vel.y
   end
   if love.keyboard.isDown('d') then
    character.pos.x = character.pos.x + character.vel.x
   end

   if love.keyboard.isDown('escape') then
    love.event.quit()
   end

   if character.pos.x < linesize then
    character.pos.x = linesize
   end
   if character.pos.y < linesize then
    character.pos.y = linesize
   end
   if character.pos.x > love.graphics.getWidth() - character.size - linesize then
    character.pos.x = love.graphics.getWidth() - character.size - linesize
   end
   if character.pos.y > love.graphics.getHeight() - character.size - linesize - 100 then
    character.pos.y = love.graphics.getHeight() - character.size - linesize - 100
   end
end

function love.draw()
    love.graphics.setColor(1, 1, 1)
    love.graphics.rectangle('line', character.pos.x, character.pos.y, character.size, character.size)
    love.graphics.setLineWidth(linesize)
    love.graphics.setColor(0, 1, 0)
    love.graphics.line(0, 0, 0, 500)
    love.graphics.line(0, 0, 800, 0)
    love.graphics.line(0, 500, 800, 500)
    love.graphics.line(800, 0, 800, 500)
end