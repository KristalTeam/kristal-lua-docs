--[[
    Generated from Kristal\src\engine\game\battle\enemybattler.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/enemybattler.lua
]]

---@meta

---@class EnemyBattler : Battler
---@overload fun(...) : EnemyBattler
EnemyBattler = {}

function EnemyBattler:init(actor, use_overlay) end

function EnemyBattler:setTired(bool) end

function EnemyBattler:registerAct(name, description, party, tp, highlight, icons) end

function EnemyBattler:registerShortAct(name, description, party, tp, highlight, icons) end

function EnemyBattler:registerActFor(char, name, description, party, tp, highlight, icons) end

function EnemyBattler:registerShortActFor(char, name, description, party, tp, highlight, icons) end

function EnemyBattler:spare(pacify) end

function EnemyBattler:getSpareText(battler, success) end

function EnemyBattler:canSpare() end

function EnemyBattler:onSpared() end

function EnemyBattler:onSpareable() end

function EnemyBattler:addMercy(amount) end

function EnemyBattler:onMercy(battler) end

function EnemyBattler:mercyFlash(color) end

function EnemyBattler:getNameColors() end

function EnemyBattler:getEncounterText() end

function EnemyBattler:getTarget() end

function EnemyBattler:getEnemyDialogue() end

function EnemyBattler:getNextWaves() end

function EnemyBattler:selectWave() end

function EnemyBattler:onCheck(battler) end

function EnemyBattler:onActStart(battler, name) end

function EnemyBattler:onAct(battler, name) end

function EnemyBattler:onTurnStart() end

function EnemyBattler:onTurnEnd() end

function EnemyBattler:getAct(name) end

function EnemyBattler:getXAction(battler) end

function EnemyBattler:isXActionShort(battler) end

function EnemyBattler:hurt(amount, battler, on_defeat, color) end

function EnemyBattler:checkHealth(on_defeat, amount, battler) end

function EnemyBattler:forceDefeat(amount, battler) end

function EnemyBattler:getAttackTension(points) end

function EnemyBattler:getAttackDamage(damage, battler, points) end

function EnemyBattler:getDamageSound() end

function EnemyBattler:onHurt(damage, battler) end

function EnemyBattler:onHurtEnd() end

function EnemyBattler:onDefeat(damage, battler) end

function EnemyBattler:onDefeatRun(damage, battler) end

function EnemyBattler:onDefeatFatal(damage, battler) end

function EnemyBattler:heal(amount) end

function EnemyBattler:freeze() end

function EnemyBattler:statusMessage(...) end

function EnemyBattler:recruitMessage(...) end

function EnemyBattler:defeat(reason, violent) end

function EnemyBattler:setActor(actor, use_overlay) end

function EnemyBattler:setSprite(sprite, speed, loop, after) end

function EnemyBattler:update() end

function EnemyBattler:canDeepCopy() end

function EnemyBattler:setFlag(flag, value) end

function EnemyBattler:getFlag(flag, default) end

function EnemyBattler:addFlag(flag, amount) end

