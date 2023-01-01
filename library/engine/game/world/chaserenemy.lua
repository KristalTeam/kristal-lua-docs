--[[
    Generated from Kristal\src\engine\game\world\chaserenemy.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/chaserenemy.lua
]]

---@meta

---@class ChaserEnemy : Character
---@overload fun(...) : ChaserEnemy
ChaserEnemy = {}

function ChaserEnemy:init(actor, x, y, properties) end

function ChaserEnemy:getDebugInfo() end

function ChaserEnemy:onCollide(player) end

function ChaserEnemy:onAdd(parent) end

function ChaserEnemy:getGroupedEnemies(include_self) end

function ChaserEnemy:onEncounterStart(primary, encounter) end

function ChaserEnemy:onEncounterTransitionOut(primary, encounter) end

function ChaserEnemy:onEncounterEnd(primary, encounter) end

function ChaserEnemy:snapToPath() end

function ChaserEnemy:isActive() end

function ChaserEnemy:update() end

function ChaserEnemy:chaseMovement() end

