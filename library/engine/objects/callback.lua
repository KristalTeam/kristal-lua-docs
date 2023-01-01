--[[
    Generated from Kristal\src\engine\objects\callback.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/callback.lua
]]

---@meta

---@class Callback : Object
---@overload fun(...) : Callback
Callback = {}

function Callback:init(o) end

function Callback:update() end

function Callback:draw() end

function Callback:setUpdate(func, before) end

function Callback:setDraw(func, before) end

