--[[
    Generated from Kristal\src\engine\game\common\data\healitem.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/data/healitem.lua
]]

---@meta

---@class HealItem : Item
---@overload fun(...) : HealItem
HealItem = {}

function HealItem:init() end

function HealItem:getHealAmount(id) end

function HealItem:getWorldHealAmount(id) end

function HealItem:getBattleHealAmount(id) end

function HealItem:onWorldUse(target) end

function HealItem:onBattleUse(user, target) end

