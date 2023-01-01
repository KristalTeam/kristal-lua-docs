--[[
    Generated from Kristal\src\engine\game\debugwindow.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/debugwindow.lua
]]

---@meta

---@class DebugWindow : Object
---@overload fun(...) : DebugWindow
DebugWindow = {}

function DebugWindow:init(name, text, type, callback) end

function DebugWindow:close() end

function DebugWindow:onMousePressed(x, y, button, istouch, presses) end

function DebugWindow:onMouseReleased(x, y, button, istouch, presses) end

function DebugWindow:getScreenBounds() end

function DebugWindow:calculateSize() end

function DebugWindow:keepInBounds() end

function DebugWindow:update() end

function DebugWindow:getLocalMousePosition() end

function DebugWindow:isMouseOver(x1, y1, x2, y2) end

function DebugWindow:getHorizontalPadding() end

function DebugWindow:getVerticalPadding() end

function DebugWindow:onSubmit() end

function DebugWindow:draw() end

