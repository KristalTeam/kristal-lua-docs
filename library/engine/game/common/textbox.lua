--[[
    Generated from Kristal\src\engine\game\common\textbox.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/textbox.lua
]]

---@meta

---@class Textbox : Object
---@overload fun(...) : Textbox
Textbox = {}

function Textbox:init(x, y, width, height, default_font, default_font_size, battle_box) end

function Textbox:update() end

function Textbox:advance() end

function Textbox:setSize(w, h) end

function Textbox:setActor(actor) end

function Textbox:setFace(face, ox, oy) end

function Textbox:setFont(font, size) end

function Textbox:setAuto(auto) end

function Textbox:setAdvance(advance) end

function Textbox:setSkippable(skippable) end

function Textbox:setAlign(align) end

function Textbox:setCallback(callback) end

function Textbox:resetReactions() end

function Textbox:addReaction(id, text, x, y, face, actor) end

function Textbox:resetFunctions() end

function Textbox:addFunction(id, func) end

function Textbox:setText(text, callback) end

function Textbox:getText() end

function Textbox:updateTextBounds() end

function Textbox:getBorder() end

function Textbox:getDebugRectangle() end

function Textbox:isTyping() end

function Textbox:isDone() end

