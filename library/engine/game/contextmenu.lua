--[[
    Generated from Kristal\src\engine\game\contextmenu.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/contextmenu.lua
]]

---@meta

---@class ContextMenu : Object
---@overload fun(...) : ContextMenu
ContextMenu = {}

function ContextMenu:init(name) end

function ContextMenu:close() end

function ContextMenu:onMousePressed(x, y, button, istouch, presses) end

function ContextMenu:onMouseReleased(x, y, button, istouch, presses) end

function ContextMenu:getScreenBounds() end

function ContextMenu:adjustToCorner() end

function ContextMenu:addMenuItem(name, description, callback, options) end

function ContextMenu:calculateSize() end

function ContextMenu:keepInBounds() end

function ContextMenu:update() end

function ContextMenu:getHorizontalPadding() end

function ContextMenu:getVerticalPadding() end

function ContextMenu:getInnerWidth() end

function ContextMenu:getInnerHeight() end

function ContextMenu:getLocalMousePosition() end

function ContextMenu:isMouseOver(x1, y1, x2, y2) end

function ContextMenu:draw() end

