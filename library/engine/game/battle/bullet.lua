--[[
    Generated from Kristal\src\engine\game\battle\bullet.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/bullet.lua
]]

---@meta

---@class Bullet : Object
---@overload fun(...) : Bullet
Bullet = {}

function Bullet:init(x, y, texture) end

function Bullet:getTarget() end

function Bullet:getDamage() end

function Bullet:onDamage(soul) end

function Bullet:onCollide(soul) end

function Bullet:onWaveSpawn(wave) end

function Bullet:setSprite(texture, speed, loop, on_finished) end

function Bullet:isBullet(id) end

function Bullet:update() end

function Bullet:draw() end

