Powerup = Class{}

local atlas = love.graphics.newImage('graphics/breakout.png')

local skin = love.graphics.newQuad(128, 192, 16, 16, atlas:getDimensions())


function Powerup:init(x, y)

    -- initialize powerup
    self.width = 16
    self.height = 16

    self.x = x
    self.y = y

    -- powerup automatically moves downard
    self.dy = 10


end

function Powerup:update(dt)

    -- move powerup downwards
    self.y = self.y + self.dy * dt

end


function Powerup:render()

    -- render image from spritesheet 
    love.graphics.draw(atlas, skin, self.x, self.y)

end