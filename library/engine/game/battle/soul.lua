--[[
    Generated from Kristal\src\engine\game\battle\soul.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/soul.lua
]]

---@meta

---@class Soul : Object
---@overload fun(...) : Soul
Soul = {}

function Soul:init(x, y, color) end

function Soul:onRemove(parent) end

function Soul:onWaveStart() end

function Soul:shatter(count) end

function Soul:transitionTo(x, y, should_destroy) end

function Soul:isMoving() end

function Soul:getExactPosition(x, y) end

function Soul:setExactPosition(x, y) end

function Soul:move(x, y, speed) end

function Soul:moveX(amount, move_y) end

function Soul:moveY(amount, move_x) end

function Soul:moveXExact(amount, move_y) end

function Soul:moveYExact(amount, move_x) end

function Soul:onDamage(bullet, amount) end

function Soul:onCollide(bullet) end

function Soul:onSquished(solid) end

function Soul:doMovement() end

function Soul:update() end

function Soul:draw() end

