--[[
    Generated from Kristal\src\engine\game\world\follower.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/follower.lua
]]

---@meta

---@class Follower : Character
---@overload fun(...) : Follower
Follower = {}

function Follower:init(chara, x, y, target) end

function Follower:onRemove(parent) end

function Follower:onAdd(parent) end

function Follower:updateIndex() end

--- Gets the delay in seconds this follower will follow its target's position,
--- taking into account the delay of followers in front of itself.
function Follower:getFollowDelay() end

function Follower:returnToFollowing(speed) end

function Follower:getTarget() end

function Follower:getTargetPosition() end

function Follower:moveToTarget(speed) end

function Follower:interpolateHistory() end

function Follower:beginSlide() end

function Follower:endSlide() end

function Follower:isAutoMoving() end

function Follower:copyHistoryFrom(target) end

function Follower:updateHistory(moved, auto) end

function Follower:update() end

