--[[
    Generated from Kristal\src\engine\drawfx\fxbase.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/drawfx/fxbase.lua
]]

---@meta

---@class FXBase
---@overload fun(...) : FXBase
FXBase = {}

function FXBase:init(priority) end

function FXBase:isActive() end

function FXBase:update() end

function FXBase:draw(texture) end

function FXBase:getObjectBounds(shader) end

function FXBase:canDeepCopy() end

function FXBase:canDeepCopyKey(key) end

