--[[
    Generated from Kristal\src\engine\game\battle\solid.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/solid.lua
]]

---@meta

---@class Solid : Object
---@overload fun(...) : Solid
Solid = {}

function Solid:init(filled, x, y, width, height) end

function Solid:move(x, y, speed) end

function Solid:moveTo(x, y) end

function Solid:doMoveAmount(amount, x_mult, y_mult) end

function Solid:onSquished(soul) end

function Solid:draw() end

