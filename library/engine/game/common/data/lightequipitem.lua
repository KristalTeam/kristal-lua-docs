--[[
    Generated from Kristal\src\engine\game\common\data\lightequipitem.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/data/lightequipitem.lua
]]

---@meta

---@class LightEquipItem : Item
---@overload fun(...) : LightEquipItem
LightEquipItem = {}

function LightEquipItem:showEquipText() end

function LightEquipItem:onWorldUse(target) end

function LightEquipItem:setArmor(i, item) end

function LightEquipItem:createArmorItems() end

function LightEquipItem:setArmorItems(armor_items) end

function LightEquipItem:convertToDarkEquip(chara) end

function LightEquipItem:convertToDark(inventory) end

