--[[
    Generated from Kristal\src\engine\game\battle\ui\actionbox.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/ui/actionbox.lua
]]

---@meta

---@class ActionBox : Object
---@overload fun(...) : ActionBox
ActionBox = {}

function ActionBox:init(x, y, index, battler) end

function ActionBox:getButtons(battler) end

function ActionBox:createButtons() end

function ActionBox:setHeadIcon(icon) end

function ActionBox:resetHeadIcon() end

function ActionBox:update() end

function ActionBox:select() end

function ActionBox:unselect() end

function ActionBox:draw() end

function ActionBox:drawActionBox() end

function ActionBox:drawSelectionMatrix() end

