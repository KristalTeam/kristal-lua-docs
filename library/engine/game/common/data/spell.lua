--[[
    Generated from Kristal\src\engine\game\common\data\spell.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/data/spell.lua
]]

---@meta

---@class Spell
---@overload fun(...) : Spell
Spell = {}

function Spell:init() end

function Spell:getName() end

function Spell:getCastName() return self.cast_name or self:getName():upper() end

function Spell:getDescription() end

function Spell:getBattleDescription() end

function Spell:getTPCost(chara) end

function Spell:isUsable(chara) end

function Spell:hasTag(tag) end

function Spell:getCastMessage(user, target) end

function Spell:onCast(user, target) end

function Spell:onStart(user, target) end

function Spell:onSelect(user, target) end

function Spell:onDeselect(user, target) end

