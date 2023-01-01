--[[
    Generated from Kristal\src\engine\game\common\actorsprite.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/actorsprite.lua
]]

---@meta

---@class ActorSprite : Sprite
---@overload fun(...) : ActorSprite
ActorSprite = {}

function ActorSprite:init(actor) end

function ActorSprite:resetSprite(ignore_actor_callback) end

function ActorSprite:setTextureExact(texture) end

function ActorSprite:setActor(actor) end

function ActorSprite:setCustomSprite(texture, ox, oy, keep_anim) end

function ActorSprite:set(name, callback, ignore_actor_callback) end

function ActorSprite:setSprite(texture, keep_anim, ignore_actor_callback) end

function ActorSprite:_setSprite(texture, keep_anim) end

function ActorSprite:setAnimation(anim, callback, ignore_actor_callback) end

function ActorSprite:canTalk() end

function ActorSprite:setFacing(facing) end

function ActorSprite:updateDirection() end

function ActorSprite:isSprite(sprite) end

function ActorSprite:getValueForSprite(tbl) end

function ActorSprite:isDirectional(texture) end

function ActorSprite:getDirectionalPath(sprite) end

function ActorSprite:getOffset() end

function ActorSprite:update() end

function ActorSprite:applyTransformTo(transform) end

function ActorSprite:draw() end

