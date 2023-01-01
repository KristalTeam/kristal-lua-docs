--[[
    Generated from Kristal\src\engine\game\world\event.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/event.lua
]]

---@meta

---@class Event : Object
---@overload fun(...) : Event
Event = {}

function Event:init(x, y, w, h) end

function Event:onInteract(player, dir) end

function Event:onCollide(player, DT) end

function Event:onEnter(player) end

function Event:onExit(player) end

function Event:onLoad() end

function Event:postLoad() end

function Event:onAdd(parent) end

function Event:onRemove(parent) end

function Event:getUniqueID() end

function Event:setFlag(flag, value) end

function Event:getFlag(flag, default) end

function Event:addFlag(flag, amt) end

function Event:setSprite(texture, speed, use_size) end

function Event:shakeSelf(x, y, friction, delay) end

function Event:stopShakeSelf() end

function Event:shake(x, y, friction, delay) end

function Event:stopShake() end

function Event:flash(sprite, offset_x, offset_y, layer) end

function Event:draw() end

function Event:onClone(src) end

