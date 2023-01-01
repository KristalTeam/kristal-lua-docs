--[[
    Generated from Kristal\src\engine\objects\text.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/text.lua
]]

---@meta

---@class Text : Object
---@overload fun(...) : Text
Text = {}

function Text:init(text, x, y, w, h, options) end

function Text:getDebugRectangle() end

function Text:onAddToStage(stage) end

function Text:processInitialNodes() end

function Text:resetState() end

function Text:update() end

function Text:setText(text) end

function Text:getFont() end

function Text:getTextWidth() end

function Text:getTextHeight() end

function Text:textToNodes(input_string) end

function Text:drawToCanvas(func, clear) end

function Text:processNode(node, dry) end

function Text:isModifier(command) end

function Text:processModifier(node, dry) end

function Text:registerCommand(command, func, options) end

function Text:processCustomCommand(node, dry) end

function Text:getNodeSize(node, state, include_scale) end

function Text:setTextColor(r, g, b, a) end

function Text:getTextColor(state, use_base_color) end

function Text:drawChar(node, state, use_color) end

function Text:isStyleAnimated(style) end

function Text:processStyle(style) end

function Text:isTrue(text) end

function Text:draw() end

