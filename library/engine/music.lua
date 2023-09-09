--[[
    Generated from Kristal\src\engine\music.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/music.lua
]]

---@meta

---@class Music : Class
---@overload fun(...) : Music
Music = {}

function Music:init() end

function Music:fade(to, speed, callback) end

function Music:getVolume() end

function Music:getPitch() end

function Music:play(music, volume, pitch) end

function Music:playFile(path, volume, pitch, name) end

function Music:setVolume(volume) end

function Music:setPitch(pitch) end

function Music:seek(time) end

function Music:tell() end

function Music:stop() end

function Music:pause() end

function Music:resume() end

function Music:isPlaying() end

function Music:canResume() end

function Music:remove() end

