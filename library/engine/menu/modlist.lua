--[[
    Generated from Kristal\src\engine\menu\modlist.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/menu/modlist.lua
]]

---@meta

---@class ModList : Object
---@overload fun(...) : ModList
ModList = {}

function ModList:init(x, y, width, height) end

function ModList:getSelected() end

function ModList:getSelectedMod() end

function ModList:isOnCreate() end

function ModList:getSelectedId() end

function ModList:getById(id) end

function ModList:clearMods() end

function ModList:addMod(mod) end

function ModList:select(i, mute) end

function ModList:selectUp(no_wrap) end

function ModList:selectDown(no_wrap) end

function ModList:pageUp(no_wrap) end

function ModList:pageDown(no_wrap) end

function ModList:setScroll(scroll) end

function ModList:update() end

function ModList:draw() end

