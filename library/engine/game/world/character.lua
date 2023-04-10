--[[
    Generated from Kristal\src\engine\game\world\character.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/character.lua
]]

---@meta

---@class Character : Object
---@overload fun(...) : Character
Character = {}

function Character:init(actor, x, y) end

function Character:getDebugInfo() end

function Character:onAdd(parent) end

function Character:getUniqueID() end

function Character:setFlag(flag, value) end

function Character:getFlag(flag, default) end

function Character:getPartyMember() end

function Character:setActor(actor) end

function Character:setFacing(dir) end

function Character:faceTowards(target) end

function Character:facePlayer() end

function Character:moveTo(x, y, keep_facing) end

function Character:move(x, y, speed, keep_facing) end

function Character:moveX(amount, move_y) end

function Character:moveY(amount, move_x) end

function Character:doMoveAmount(type, amount, other_amount) end

function Character:onFootstep(num) end

function Character:walkTo(x, y, time, facing, keep_facing, ease, after) end

function Character:walkToSpeed(x, y, speed, facing, keep_facing, after) end

function Character:walkPath(path, options) end

function Character:doWalkToStep(x, y, keep_facing) end

function Character:shakeSelf(x, y, friction, delay) end

function Character:stopShakeSelf() end

function Character:shake(x, y, friction, delay) end

function Character:stopShake() end

function Character:flash(sprite, offset_x, offset_y, layer) end

function Character:setSprite(sprite) end

function Character:setCustomSprite(sprite, ox, oy) end

function Character:setWalkSprite(sprite) end

function Character:resetSprite() end

function Character:setAnimation(animation, after) end

function Character:play(speed, loop, reset, on_finished) end

function Character:jumpTo(x, y, speed, time, jump_sprite, land_sprite) end

function Character:processJump() end

function Character:statusMessage(type, arg, color, kill) end

function Character:convertToFollower(index, save) end

function Character:convertToPlayer() end

function Character:convertToNPC(properties) end

function Character:convertToCharacter() end

function Character:convertToEnemy(properties) end

function Character:update() end

function Character:spin(speed) end

function Character:draw() end

