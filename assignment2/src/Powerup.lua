Powerup = Class{}


function Powerup:init(x, y)

    -- initialize size to 10x10
    -- TODO draw from sprite sheet
    self.width = 10
    self.height = 10

    self.x = x
    self.y = y

    -- powerup automatically moves downard
    self.dy = 5

end

function Powerup:update()

    -- move powerup downwards
    self.y = self.y + self.dy * dt

end


function Powerup:render()

    -- temporarily just draw a rectangle
    print("render pu")
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)

end