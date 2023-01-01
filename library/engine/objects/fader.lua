--[[
    Generated from Kristal\src\engine\objects\fader.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/fader.lua
]]

---@meta

---@class Fader : Object
---@overload fun(...) : Fader
Fader = {}

function Fader:init() end

function Fader:parseOptions(options, reset_values) end

function Fader:parseMusicFade(to, options) end

function Fader:transition(middle_callback, end_callback, options) end

function Fader:fadeOut(callback, options) end

function Fader:fadeIn(callback, options) end

function Fader:update() end

function Fader:draw() end

