local Vec = require('vec')

local Tile = {
    pos = Vec.new(0, 0),
    wall = 0
}

function Tile:new(x, y)
    local newobj = { 
        pos = Vec.new(x, y),
    }
    self.__index = self
    return setmetatable(newobj, self)
end

return Tile