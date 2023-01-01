--[[
    Generated from Kristal\src\engine\game\debugsystem.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/debugsystem.lua
]]

---@meta

---@class DebugSystem : Object
---@overload fun(...) : DebugSystem
DebugSystem = {}

function DebugSystem:init() end

function DebugSystem:getStage() end

function DebugSystem:selectionOpen() end

function DebugSystem:selectObject(object) end

function DebugSystem:onMousePressed(x, y, button, istouch, presses) end

function DebugSystem:openObjectContext(object) end

function DebugSystem:copyObject(object) end

function DebugSystem:cutObject(object) end

function DebugSystem:pasteObject(object) end

function DebugSystem:unselectObject() end

function DebugSystem:onMouseReleased(x, y, button, istouch, presses) end

function DebugSystem:detectObject(x, y) end

function DebugSystem:registerConfigOption(menu, name, description, value, callback) end

function DebugSystem:appendBool(desc, bool) end

function DebugSystem:refresh() end

function DebugSystem:fadeMusicOut() end

function DebugSystem:fadeMusicIn() end

function DebugSystem:returnMenu() end

function DebugSystem:registerMenu(id, name, type) end

function DebugSystem:enterMenu(menu, soul, skip_history) end

function DebugSystem:startTextInput() end

function DebugSystem:sortMenuOptions(options, filter) end

function DebugSystem:registerSubMenus() end

function DebugSystem:registerDefaults() end

function DebugSystem:getValidOptions() end

function DebugSystem:registerOption(menu, name, description, func, state) end

function DebugSystem:openSelection() end

function DebugSystem:closeSelection() end

function DebugSystem:openMenu() end

function DebugSystem:closeMenu() end

function DebugSystem:setState(state, reason) end

function DebugSystem:onStateChange(old, new) end

function DebugSystem:updateBounds(options) end

function DebugSystem:onKeyReleased(key) end

function DebugSystem:onKeyPressed(key, is_repeat) end

function DebugSystem:isMenuOpen() end

function DebugSystem:update() end

function DebugSystem:onWheelMoved(x, y) end

function DebugSystem:draw() end

function DebugSystem:printShadow(text, x, y, color, align, limit) end

