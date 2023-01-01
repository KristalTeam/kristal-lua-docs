--[[
    Generated from Kristal\src\engine\colliders\collidergroup.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/colliders/collidergroup.lua
]]

---@meta

---@class ColliderGroup : Collider
---@overload fun(...) : ColliderGroup
ColliderGroup = {}

function ColliderGroup:init(parent, colliders, mode) end

function ColliderGroup:addCollider(collider) end

function ColliderGroup:collidesWith(other) end

function ColliderGroup:drawFor(obj,r,g,b,a) end

function ColliderGroup:drawFillFor(obj,r,g,b,a) end

function ColliderGroup:draw(r,g,b,a) end

function ColliderGroup:drawFill(r,g,b,a) end

