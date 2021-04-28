
function love.load()

    loveframes = require("libraries.loveframes")

end

function love.update(dt)
             
    -- your code
 
    loveframes.update(dt)
 
end
                 
function love.draw()
 
    BG = love.graphics.newImage("assets/BG_placeholder.PNG")
    love.graphics.draw(BG, 30, 0)
 
    loveframes.draw()
 
end
 
function love.mousepressed(x, y, button)
 
    -- your code<
 
    loveframes.mousepressed(x, y, button)
 
end
 
function love.mousereleased(x, y, button)
 
    -- your code
 
    loveframes.mousereleased(x, y, button)
 
end
 
function love.keypressed(key, scancode, isrepeat)
 
    -- your code
 
    loveframes.keypressed(key, isrepeat)
 
end
 
function love.keyreleased(key)
 
    -- your code

    loveframes.keyreleased(key)
 
end

-- Used by text input object

function love.textinput(text)

    -- your code

    loveframes.textinput(text)

end