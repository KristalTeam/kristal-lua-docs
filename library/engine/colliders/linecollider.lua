--[[
    Generated from Kristal\src\engine\colliders\linecollider.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/colliders/linecollider.lua
]]

---@meta

---@class LineCollider : Collider
---@overload fun(...) : LineCollider
LineCollider = {}

function LineCollider:init(parent, x1, y1, x2, y2, mode) end

function LineCollider:collidesWith(other, symmetrical) end

function LineCollider:getShapeFor(other) end

function LineCollider:draw(r,g,b,a) end

function LineCollider:drawFill(r,g,b,a) end

