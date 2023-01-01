--[[
    Generated from Kristal\src\engine\game\battle\battlecutscene.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle/battlecutscene.lua
]]

---@meta

---@class BattleCutscene : Cutscene
---@overload fun(...) : BattleCutscene
BattleCutscene = {}

function BattleCutscene:init(group, id, ...) end

function BattleCutscene:update() end

function BattleCutscene:onEnd() end

function BattleCutscene:getCharacter(id) end

function BattleCutscene:getEnemies(id) end

function BattleCutscene:getUser() end

function BattleCutscene:getTarget() end

function BattleCutscene:resetSprites() end

function BattleCutscene:setSprite(chara, sprite, speed) end

function BattleCutscene:setAnimation(chara, anim) end

function BattleCutscene:moveTo(chara, x, y, speed) end

function BattleCutscene:slideTo(obj, x, y, time, ease) end

function BattleCutscene:slideToSpeed(obj, x, y, speed) end

function BattleCutscene:shakeCharacter(chara, x, y, friction, delay) end

function BattleCutscene:shakeCamera(x, y, friction) end

function BattleCutscene:fadeOut(speed, options) end

function BattleCutscene:fadeIn(speed, options) end

function BattleCutscene:setSpeaker(actor) end

function BattleCutscene:text(text, portrait, actor, options) end

function BattleCutscene:battlerText(battlers, text, options) end

function BattleCutscene:choicer(choices, options) end

function BattleCutscene:closeText() end

