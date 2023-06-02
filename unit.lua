local Vec = require('vec')

local Unit = {
    pos = Vec.new(0, 0),
    vel = Vec.new(0, 0),
    size = 10,
    health = 100
}

function Unit:new(x, y, vx, vy, s)
    local newobj = { 
        pos = Vec.new(x, y),
        vel = Vec.new(vx, vy),
        size = s
    }
     self.__index = self
    return setmetatable(newobj, self)
end

return Unit