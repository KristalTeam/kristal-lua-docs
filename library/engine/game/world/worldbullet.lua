--[[
    Generated from Kristal\src\engine\game\world\worldbullet.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/worldbullet.lua
]]

---@meta

---@class WorldBullet : Object
---@overload fun(...) : WorldBullet
WorldBullet = {}

function WorldBullet:init(x, y, texture) end

function WorldBullet:getDebugInfo() end

function WorldBullet:getDamage() end

function WorldBullet:onDamage(soul) end

function WorldBullet:onCollide(soul) end

function WorldBullet:setSprite(texture, speed, loop, on_finished) end

function WorldBullet:isBullet(id) end

function WorldBullet:onAdd(parent) end

function WorldBullet:onRemove(parent) end

function WorldBullet:update() end

function WorldBullet:getDrawColor() end

function WorldBullet:draw() end

