--[[
    Generated from Kristal\src\engine\colliders\collider.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/colliders/collider.lua
]]

---@meta

---@class Collider : Class
---@overload fun(...) : Collider
Collider = {}

function Collider:init(parent, x, y, mode) end

function Collider:collidableCheck(other) end

function Collider:insideCheck(other) end

function Collider:applyInvert(other, val) end

function Collider:getOtherCollider(other) end

function Collider:getTransform() end

function Collider:getTransformsWith(other) end

function Collider:getPointFor(other, x, y) end

function Collider:getLocalPointsWith(other, ...) end

function Collider:getLocalPoints(tf1,tf2, ...) end

function Collider:collidesWith(other) end

function Collider:drawFor(obj, ...) end

function Collider:drawFillFor(obj, ...) end

function Collider:draw(...) end

function Collider:drawFill(...) end

function Collider:canDeepCopy() end

function Collider:canDeepCopyKey(key) end

