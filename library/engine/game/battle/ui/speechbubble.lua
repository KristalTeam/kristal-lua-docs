--[[
    Generated from Kristal\src\engine\game\battle\ui\speechbubble.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/ui/speechbubble.lua
]]

---@meta

---@class SpeechBubble : Object
---@overload fun(...) : SpeechBubble
SpeechBubble = {}

function SpeechBubble:init(text, x, y, options, speaker) end

function SpeechBubble:setStyle(style) end

function SpeechBubble:onRemoveFromStage(stage) end

function SpeechBubble:advance() end

function SpeechBubble:setText(text, callback, line_callback) end

function SpeechBubble:setAuto(auto) end

function SpeechBubble:setAdvance(advance) end

function SpeechBubble:setSkippable(skippable) end

function SpeechBubble:setCallback(callback) end

function SpeechBubble:setLineCallback(callback) end

function SpeechBubble:setRight(right) end

function SpeechBubble:isTyping() end

function SpeechBubble:isDone() end

function SpeechBubble:update() end

function SpeechBubble:getBorder() end

function SpeechBubble:getDebugRectangle() end

function SpeechBubble:getSprite(name) end

function SpeechBubble:getSpriteSize(name) end

function SpeechBubble:getTailWidth() end

function SpeechBubble:updateSize() end

function SpeechBubble:draw() end

