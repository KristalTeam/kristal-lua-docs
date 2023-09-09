--[[
    Generated from Kristal\src\engine\game\common\textchoicebox.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/textchoicebox.lua
]]

---@meta

---@class TextChoicebox : Textbox
---@overload fun(...) : TextChoicebox
TextChoicebox = {}

function TextChoicebox:init(x, y, width, height, default_font, default_font_size, battle_box) end

function TextChoicebox:update() end

function TextChoicebox:clearChoices() end

function TextChoicebox:addChoice(name) end

function TextChoicebox:setText(text, callback) end

function TextChoicebox:transformText(text) end

function TextChoicebox:isDone() end

function TextChoicebox:draw() end

