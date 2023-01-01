--[[
    Generated from Kristal\src\engine\game\world\events\pushblock.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/events/pushblock.lua
]]

---@meta

---@class PushBlock : Event
---@overload fun(...) : PushBlock
PushBlock = {}

function PushBlock:init(x, y, w, h, properties, sprite, solved_sprite) end

function PushBlock:onInteract(chara, facing) end

function PushBlock:playPushSound() end

function PushBlock:checkCollision(facing) end

function PushBlock:onPush(facing) end

function PushBlock:onSolved() end

function PushBlock:onUnsolved() end

function PushBlock:onPushEnd(facing) end

function PushBlock:onPushFail(facing) end

function PushBlock:reset() end

function PushBlock:onReset() end

