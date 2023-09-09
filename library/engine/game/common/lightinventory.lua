--[[
    Generated from Kristal\src\engine\game\common\lightinventory.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/lightinventory.lua
]]

---@meta

---@class LightInventory : Inventory
---@overload fun(...) : LightInventory
LightInventory = {}

function LightInventory:init() end

function LightInventory:clear() end

function LightInventory:convertToDark() end

function LightInventory:getDarkInventory() end

function LightInventory:getDefaultStorage(item_type) end

---@return Item|nil
function LightInventory:addItem(item, ignore_dark) end

function LightInventory:tryGiveItem(item, ignore_dark) end

