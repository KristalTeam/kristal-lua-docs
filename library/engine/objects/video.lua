--[[
    Generated from Kristal\src\engine\objects\video.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/video.lua
]]

---@meta

---@class Video : Object
---@overload fun(...) : Video
Video = {}

function Video:init(video, load_audio, x, y, w, h) end

function Video:play() end

function Video:stop() end

function Video:pause() end

function Video:rewind() end

function Video:seek(time) end

function Video:tell() end

function Video:isPlaying() end

function Video:setLooping(loop) end

function Video:onRemoveFromStage(stage) end

function Video:update() end

function Video:draw() end

