--[[
    Generated from Kristal\src\engine\game\world\player.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/player.lua
]]

---@meta

---@class Player : Character
---@overload fun(...) : Player
Player = {}

function Player:init(chara, x, y) end

function Player:getDebugInfo() end

function Player:getDebugOptions(context) end

function Player:onAdd(parent) end

function Player:onRemove(parent) end

function Player:onRemoveFromStage(stage) end

function Player:setActor(actor) end

function Player:interact() end

function Player:setState(state, ...) end

function Player:resetFollowerHistory() end

function Player:alignFollowers(facing, x, y, dist) end

function Player:interpolateFollowers() end

function Player:isCameraAttachable() end

function Player:isMovementEnabled() end

function Player:handleMovement() end

function Player:updateWalk() end

function Player:isMoving() end

function Player:beginSlide(last_state, in_place, lock_movement) end

function Player:updateSlideDust() end

function Player:updateSlide() end

function Player:endSlide(next_state) end

function Player:updateHistory() end

function Player:update() end

function Player:draw() end

