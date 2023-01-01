--[[
    Generated from Kristal\src\engine\objects\fakeclone.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/fakeclone.lua
]]

---@meta

---@class FakeClone : Object
---@overload fun(...) : FakeClone
FakeClone = {}

function FakeClone:init(ref, x, y, copy_transform) end

function FakeClone:getDebugRectangle() end

function FakeClone:update() end

function FakeClone:applyTransformTo(transform) end

function FakeClone:draw() end

function FakeClone:canDeepCopyKey(key) end

