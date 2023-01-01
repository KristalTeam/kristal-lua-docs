--[[
    Generated from Kristal\src\engine\objects\gonerkeyboard.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/gonerkeyboard.lua
]]

---@meta

---@class GonerKeyboard : Object
---@overload fun(...) : GonerKeyboard
GonerKeyboard = {}

function GonerKeyboard:init(limit, mode, callback, key_callback) end

function GonerKeyboard:setMode(mode) end

function GonerKeyboard:createKeyboardChoices(mode) end

function GonerKeyboard:update() end

function GonerKeyboard:onSelect(key, x, y) end

function GonerKeyboard:onComplete(text) end

function GonerKeyboard:undoCharacter() end

function GonerKeyboard:addCharacter(key) end

function GonerKeyboard:finish() end

function GonerKeyboard:draw() end

