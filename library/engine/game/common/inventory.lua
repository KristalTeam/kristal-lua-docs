--[[
    Generated from Kristal\src\engine\game\common\inventory.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/inventory.lua
]]

---@meta

---@class Inventory
---@overload fun(...) : Inventory
Inventory = {}

function Inventory:init() end

function Inventory:clear() end

function Inventory:addItem(item, ignore_convert) end

function Inventory:addItemTo(storage, index, item, allow_fallback) end

function Inventory:getNextIndex(storage, index, allow_fallback) end

function Inventory:removeItem(item) end

function Inventory:removeItemFrom(storage, index) end

function Inventory:setItem(storage, index, item) end

function Inventory:updateStoredItems(storage) end

function Inventory:getItemIndex(item) end

function Inventory:replaceItem(item, new) end

function Inventory:swapItems(storage1, index1, storage2, index2) end

function Inventory:getItem(storage, index) end

function Inventory:hasItem(item) end

function Inventory:getItemByID(item) end

function Inventory:isFull(storage, allow_fallback) end

function Inventory:getItemCount(storage, allow_fallback) end

function Inventory:getFreeSpace(storage, allow_fallback) end

function Inventory:tryGiveItem(item, ignore_convert) end

function Inventory:getDefaultStorage(item_type, ignore_convert) end

function Inventory:getStorage(type) end

function Inventory:load(data) end

function Inventory:save() end

function Inventory:loadStorage(storage, data) end

function Inventory:saveStorage(storage) end

