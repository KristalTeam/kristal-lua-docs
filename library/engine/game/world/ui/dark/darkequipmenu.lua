--[[
    Generated from Kristal\src\engine\game\world\ui\dark\darkequipmenu.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/ui/dark/darkequipmenu.lua
]]

---@meta

---@class DarkEquipMenu : Object
---@overload fun(...) : DarkEquipMenu
DarkEquipMenu = {}

function DarkEquipMenu:init() end

function DarkEquipMenu:getCurrentItemType() end

function DarkEquipMenu:getCurrentStorage() end

function DarkEquipMenu:getSelectedItem() end

function DarkEquipMenu:getMaxItems() end

function DarkEquipMenu:canEquipSelected() end

function DarkEquipMenu:getEquipPreview() end

function DarkEquipMenu:getStatsPreview() end

function DarkEquipMenu:getAbilityPreview() end

function DarkEquipMenu:react() end

function DarkEquipMenu:updateDescription() end

function DarkEquipMenu:onRemove(parent) end

function DarkEquipMenu:update() end

function DarkEquipMenu:draw() end

function DarkEquipMenu:drawChar() end

function DarkEquipMenu:drawEquipped() end

function DarkEquipMenu:drawEquippedItem(index, x, y) end

function DarkEquipMenu:drawItems() end

function DarkEquipMenu:drawStats() end

function DarkEquipMenu:drawStatPreview(stat, x, y, stats, compare) end

function DarkEquipMenu:drawAbilityPreview(index, x, y, abilities, compare) end

