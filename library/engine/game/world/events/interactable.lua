--[[
    Generated from Kristal\src\engine\game\world\events\interactable.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/events/interactable.lua
]]

---@meta

---@class Interactable : Event
---@overload fun(...) : Interactable
Interactable = {}

function Interactable:init(x, y, width, height, properties) end

function Interactable:getDebugInfo() end

function Interactable:onAdd(parent) end

function Interactable:onInteract(player, dir) end

function Interactable:onTextEnd() end

