--[[
    Generated from Kristal\src\engine\game\battle\partybattler.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/partybattler.lua
]]

---@meta

---@class PartyBattler : Battler
---@overload fun(...) : PartyBattler
PartyBattler = {}

function PartyBattler:init(chara, x, y) end

function PartyBattler:canTarget() end

function PartyBattler:calculateDamage(amount) end

function PartyBattler:calculateDamageSimple(amount) end

function PartyBattler:getElementReduction(element) end

function PartyBattler:hurt(amount, exact, color, options) end

function PartyBattler:removeHealth(amount) end

function PartyBattler:removeHealthBroken(amount) end

function PartyBattler:down() end

function PartyBattler:setSleeping(sleeping) end

function PartyBattler:revive() end

function PartyBattler:flash(sprite, offset_x, offset_y, layer) end

function PartyBattler:heal(amount, sparkle_color, show_up) end

function PartyBattler:checkHealth() end

function PartyBattler:statusMessage(...) end

function PartyBattler:recruitMessage(...) end

function PartyBattler:isActive() end

function PartyBattler:isTargeted() end

function PartyBattler:getHeadIcon() end

function PartyBattler:toggleOverlay(overlay) end

function PartyBattler:resetSprite() end

function PartyBattler:setActSprite(sprite, ox, oy, speed, loop, after) end

function PartyBattler:setSprite(sprite, speed, loop, after) end

function PartyBattler:update() end

function PartyBattler:draw() end

