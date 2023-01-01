--[[
    Generated from Kristal\src\engine\objects\gonerchoice.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/gonerchoice.lua
]]

---@meta

---@class GonerChoice : Object
---@overload fun(...) : GonerChoice
GonerChoice = {}

function GonerChoice:init(x, y, choices, on_complete, on_select) end

function GonerChoice:onSelect(choice, x, y) end

function GonerChoice:onCancel(choice, x, y) end

function GonerChoice:onHover(choice, x, y) end

function GonerChoice:onComplete(choice, x, y) end

function GonerChoice:setChoices(choices, selected_x, selected_y) end

function GonerChoice:setChoice(x, y, choice) end

function GonerChoice:setSoulOffset(x, y) end

function GonerChoice:setSoulTarget(x, y) end

function GonerChoice:setSoulPosition(x, y, set_target) end

function GonerChoice:setSoulOrigin(ox, oy) end

function GonerChoice:setWrap(x, y) end

function GonerChoice:setSelectedOption(x, y, move_soul) end

function GonerChoice:resetSoulPosition() end

function GonerChoice:resetSoulTarget() end

function GonerChoice:getSoulTarget(choice, x, y) end

function GonerChoice:getChoiceText(choice, x, y) end

function GonerChoice:isHidden(choice, x, y) end

function GonerChoice:update() end

function GonerChoice:finish(callback) end

function GonerChoice:clampSelection() end

function GonerChoice:resetSize() end

function GonerChoice:getChoice(x, y) end

function GonerChoice:select(x, y) end

function GonerChoice:moveSelection(x, y, dx, dy) end

function GonerChoice:draw() end

