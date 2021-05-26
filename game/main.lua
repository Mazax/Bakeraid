
function love.load()
    minIngrAmount = 0;
    maxIngrAmount = 3;
    
    loveframes = require("libraries.loveframes")
    require("ui_ingredient")
    require("ui_sign")
    require("ui_viking")

    require("ui_main")

    require("viking_creation")

    --test viking creation
    local viking = createViking(1,3,3,1)
    print(viking.type)

    music = love.audio.newSource("assets/audio/VIKINKI2_V2.mp3", "stream")

    music:setVolume(0.6)
    --music:play()

    BG = love.graphics.newImage("assets/BG_v02.PNG")

end

function love.update(dt)
             
    -- your code
 
    loveframes.update(dt)

    if not music:isPlaying() then
		love.audio.play(music)
	end
 
end
                 
function love.draw()

    love.graphics.draw(BG, 0, 0)
 
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