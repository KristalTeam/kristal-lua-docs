--[[
    Generated from Kristal\src\engine\objects\dialoguetext.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/dialoguetext.lua
]]

---@meta

---@class DialogueText : Text
---@overload fun(...) : DialogueText
DialogueText = {}

function DialogueText:init(text, x, y, w, h, options) end

function DialogueText:getDebugInfo() end

function DialogueText:resetState() end

function DialogueText:processInitialNodes() end

function DialogueText:setText(text, callback, line_callback) end

function DialogueText:advance() end

function DialogueText:update() end

function DialogueText:updateTalkSprite(typing) end

function DialogueText:playTextSound(current_node) end

function DialogueText:isNodeInstant(node) end

function DialogueText:isModifier(command) end

function DialogueText:registerCommand(command, func, options) end

function DialogueText:processCustomCommand(node, dry) end

function DialogueText:processModifier(node, dry) end

function DialogueText:addFunction(id, func) end

function DialogueText:isTyping() end

function DialogueText:isDone() end

