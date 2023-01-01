--[[
    Generated from Kristal\src\engine\game\battle\battler.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/battler.lua
]]

---@meta

---@class Battler : Object
---@overload fun(...) : Battler
Battler = {}

function Battler:init(x, y, width, height) end

function Battler:flash(sprite, offset_x, offset_y, layer) end

function Battler:sparkle(r, g, b) end

function Battler:statusMessage(x, y, type, arg, color, kill) end

function Battler:spawnSpeechBubble(text, options) end

function Battler:onBubbleSpawn(bubble) end

function Battler:onBubbleRemove(bubble) end

function Battler:setAnimation(animation, callback) end

function Battler:getActiveSprite() end

function Battler:setCustomSprite(sprite, ox, oy, speed, loop, after) end

function Battler:update() end

