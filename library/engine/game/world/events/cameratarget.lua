--[[
    Generated from Kristal\src\engine\game\world\events\cameratarget.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/events/cameratarget.lua
]]

---@meta

---@class CameraTarget : Event
---@overload fun(...) : CameraTarget
CameraTarget = {}

function CameraTarget:init(x, y, w, h, properties) end

function CameraTarget:getTargetPosition() end

function CameraTarget:onEnter(chara) end

function CameraTarget:onExit(chara) end

