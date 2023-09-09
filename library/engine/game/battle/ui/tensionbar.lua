--[[
    Generated from Kristal\src\engine\game\battle\ui\tensionbar.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/ui/tensionbar.lua
]]

---@meta

---@class TensionBar : Object
---@overload fun(...) : TensionBar
TensionBar = {}

function TensionBar:init(x, y, dont_animate) end

function TensionBar:show() end

function TensionBar:hide() end

function TensionBar:getDebugInfo() end

function TensionBar:getTension250() end

function TensionBar:setTensionPreview(amount) end

function TensionBar:getPercentageFor(variable) end

function TensionBar:getPercentageFor250(variable) end

function TensionBar:processSlideIn() end

function TensionBar:processTension() end

function TensionBar:update() end

function TensionBar:drawText() end

function TensionBar:drawMaxText() end

function TensionBar:drawBack() end

function TensionBar:drawFill() end

function TensionBar:draw() end

