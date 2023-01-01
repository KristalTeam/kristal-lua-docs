--[[
    Generated from Kristal\src\engine\game\battle\arena.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/arena.lua
]]

---@meta

---@class Arena : Object
---@overload fun(...) : Arena
Arena = {}

function Arena:init(x, y, shape) end

function Arena:setSize(width, height) end

function Arena:setShape(shape) end

function Arena:setBackgroundColor(r, g, b, a) end

function Arena:getBackgroundColor() end

function Arena:getCenter() end

function Arena:getTopLeft() return self:getRelativePos(0, 0) end

function Arena:getTopRight() return self:getRelativePos(self.width, 0) end

function Arena:getBottomLeft() return self:getRelativePos(0, self.height) end

function Arena:getBottomRight() return self:getRelativePos(self.width, self.height) end

function Arena:getLeft() local x, y = self:getTopLeft() end

function Arena:getRight() local x, y = self:getBottomRight() end

function Arena:getTop() local x, y = self:getTopLeft() end

function Arena:getBottom() local x, y = self:getBottomRight() end

function Arena:onAdd(parent) end

function Arena:onRemove(parent) end

function Arena:update() end

function Arena:drawMask() end

function Arena:draw() end

