--[[
    Generated from Kristal\src\engine\camera.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/camera.lua
]]

---@meta

---@class Camera : Class
---@overload fun(...) : Camera
Camera = {}

function Camera:init(parent, x, y, width, height, keep_in_bounds) end

function Camera:setState(state) end

function Camera:getBounds() end

function Camera:setBounds(x, y, width, height) end

function Camera:getRect(scaled) end

function Camera:getPosition() end

function Camera:setPosition(x, y) end

function Camera:getOffset() end

function Camera:setOffset(ox, oy) end

function Camera:getOffsetPos() end

function Camera:getZoom() end

function Camera:setZoom(x, y) end

function Camera:approach(x, y, amount) end

function Camera:approachDirect(x, y, amount) end

function Camera:shake(x, y, friction) end

function Camera:stopShake() end

function Camera:panTo(x, y, time, ease, after) end

function Camera:panToSpeed(x, y, speed, after) end

function Camera:getTarget() end

function Camera:getTargetPosition() end

function Camera:setAttached(attached_x, attached_y) end

function Camera:setModifier(name, value, approach_speed, approach_type) end

function Camera:resetModifiers(immediate) end

function Camera:getMinPosition(bx, by, bw, bh) end

function Camera:getMaxPosition(bx, by, bw, bh) end

function Camera:keepInBounds() end

function Camera:moveTo(x, y) end

function Camera:processMod(name, mod, x, y) end

function Camera:update() end

function Camera:beginAttached(last_state, attach_x, attach_y) end

function Camera:updateAttached() end

function Camera:endAttached() end

function Camera:updatePanning() end

function Camera:getParallax(px, py, ox, oy) end

function Camera:applyTo(transform, ceil_x, ceil_y) end

function Camera:getTransform() end

function Camera:canDeepCopy() end

function Camera:canDeepCopyKey(key) end

