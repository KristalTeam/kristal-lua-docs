--[[
    Generated from Kristal\src\engine\game\world\events\tilebutton.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/events/tilebutton.lua
]]

---@meta

---@class TileButton : Event
---@overload fun(...) : TileButton
TileButton = {}

function TileButton:init(x, y, w, h, properties, idle_sprite, pressed_sprite) end

function TileButton:onLoad() end

function TileButton:update() end

function TileButton:setPressed(pressed) end

function TileButton:onPressed() end

function TileButton:onReleased() end

function TileButton:onCompleted() end

function TileButton:onIncompleted() end

function TileButton:checkCompletion() end

function TileButton:onCollide(chara) end

function TileButton:onExit(chara) end

