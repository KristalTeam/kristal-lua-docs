--[[
    Generated from Kristal\src\engine\colliders\hitbox.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/colliders/hitbox.lua
]]

---@meta

---@class Hitbox : Collider
---@overload fun(...) : Hitbox
Hitbox = {}

function Hitbox:init(parent, x, y, width, height, mode) end

function Hitbox:collidesWith(other) end

function Hitbox:getShapeFor(other) end

function Hitbox:draw(r,g,b,a) end

function Hitbox:drawFill(r,g,b,a) end

