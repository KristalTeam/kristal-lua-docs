--[[
    Generated from Kristal\src\engine\game\battle\encounter.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/encounter.lua
]]

---@meta

---@class Encounter
---@overload fun(...) : Encounter
Encounter = {}

function Encounter:init() end

function Encounter:onBattleInit() end

function Encounter:onBattleStart() end

function Encounter:onBattleEnd() end

function Encounter:onTurnStart() end

function Encounter:onTurnEnd() end

function Encounter:onActionsStart() end

function Encounter:onActionsEnd() end

function Encounter:onCharacterTurn(battler, undo) end

function Encounter:beforeStateChange(old, new) end

function Encounter:onStateChange(old, new) end

function Encounter:onGameOver() end

function Encounter:onReturnToWorld(events) end

function Encounter:getDialogueCutscene() end

function Encounter:update() end

function Encounter:draw(fade) end

function Encounter:drawBackground(fade) end

function Encounter:addEnemy(enemy, x, y, ...) end

function Encounter:getEncounterText() end

function Encounter:getNextWaves() end

function Encounter:getPartyPosition(index) end

function Encounter:onDialogueEnd() end

function Encounter:onWavesDone() end

function Encounter:createSoul(x, y, color) end

function Encounter:canDeepCopy() end

function Encounter:getDefeatedEnemies() end

function Encounter:setFlag(flag, value) end

function Encounter:getFlag(flag, default) end

function Encounter:addFlag(flag, amount) end

