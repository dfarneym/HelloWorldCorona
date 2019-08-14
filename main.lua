-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local background = display.newImageRect( "fundo.jpg", 360, 570 )
background.x = display.contentCenterX
background.y = display.contentCenterY

local platform = display.newImageRect( "platform.png", 300, 15 )
platform.x = display.contentCenterX
platform.y = display.contentHeight-0
platform.alpha = 0.10
 
local helloWorld = display.newImageRect( "helloWorld.png", 300, 30 )
helloWorld.x = display.contentCenterX
helloWorld.y = display.contentCenterY
helloWorld.alpha = 0.9

local physics = require( "physics" )
physics.start()
 
physics.addBody( platform, "static" )
physics.addBody( helloWorld, "dynamic", { radius=50, bounce= 1 } )
 
local function pushHelloWord()
    helloWorld:applyLinearImpulse( 0, -0.75, helloWorld.x, helloWorld.y )
end
 
helloWorld:addEventListener( "tap", pushHelloWord )


--Alterações no arquivo: 
--Background, imagem do nome Hello World
--Mudança na largura e altura da plataforma onde a imagem do helloWorld toca na plataforma
--E um aumento no tamanho do pulo