--[[
    Generated from Kristal\src\engine\game\battle\wave.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/wave.lua
]]

---@meta

---@class Wave : Object
---@overload fun(...) : Wave
Wave = {}

function Wave:init() end

function Wave:update() end

function Wave:onArenaEnter() end

function Wave:onArenaExit() end

function Wave:onStart() end

function Wave:onEnd(death) end

function Wave:beforeEnd() end

function Wave:canEnd() end

function Wave:clear() end

function Wave:spawnBullet(bullet, ...) end

function Wave:spawnBulletTo(parent, bullet, ...) end

function Wave:spawnSprite(texture, x, y, layer) end

function Wave:spawnSpriteTo(parent, texture, x, y, layer) end

function Wave:spawnObject(object, x, y) end

function Wave:spawnObjectTo(parent, object, x, y) end

function Wave:setArenaPosition(x, y) end

function Wave:setArenaOffset(x, y) end

function Wave:setArenaSize(width, height) end

function Wave:setArenaShape(...) end

function Wave:setSoulPosition(x, y) end

function Wave:setSoulOffset(x, y) end

function Wave:getAttackers() end

function Wave:canDeepCopy() end

