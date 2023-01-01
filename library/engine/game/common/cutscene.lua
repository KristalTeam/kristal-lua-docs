--[[
    Generated from Kristal\src\engine\game\common\cutscene.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/cutscene.lua
]]

---@meta

---@class Cutscene
---@overload fun(...) : Cutscene
Cutscene = {}

function Cutscene:init(func, ...) end

function Cutscene:parseFromGetter(getter, cutscene, id, ...) end

function Cutscene:after(func, replace) end

function Cutscene:during(func, replace) end

function Cutscene:canResume() end

function Cutscene:canEnd() end

function Cutscene:update() end

function Cutscene:onEnd() end

function Cutscene:wait(seconds) end

function Cutscene:pause() end

function Cutscene:tryResume() end

function Cutscene:resume(...) end

function Cutscene:endCutscene() end

function Cutscene:gotoCutscene(func, ...) end

function Cutscene:playSound(sound, volume, pitch) end

