--[[
    Generated from Kristal\src\engine\objects\timer.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/timer.lua
]]

---@meta

---@class Timer : Object
---@overload fun(...) : Timer
Timer = {}

function Timer:init(active) end

function Timer:pause(handle) end

function Timer:unpause(handle) end

function Timer:after(delay, func) end

function Timer:script(func) end

function Timer:every(delay, func, count) end

function Timer:everyInstant(delay, func, count) end

function Timer:during(delay, func, after) end

function Timer:tween(duration, subject, target, method, after, ...) end

function Timer:doWhile(condition, func, after) end

function Timer:afterCond(condition, func) end

function Timer:approach(time, from, to, callback, easing, after) end

function Timer:cancel(handle) end

function Timer:clear() end

function Timer:update() end

