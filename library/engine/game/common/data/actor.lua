--[[
    Generated from Kristal\src\engine\game\common\data\actor.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/common/data/actor.lua
]]

---@meta

---@class Actor : Class
---@overload fun(...) : Actor
Actor = {}

function Actor:init() end

function Actor:onWorldUpdate(chara) end

function Actor:onWorldDraw(chara) end

function Actor:onBattleUpdate(battler) end

function Actor:onBattleDraw(battler) end

function Actor:onTalkStart(text, sprite) end

function Actor:onTalkEnd(text, sprite) end

function Actor:onSpriteInit(sprite) end

function Actor:preSet(sprite, name, callback) end

function Actor:onSet(sprite, name, callback) end

function Actor:preSetSprite(sprite, texture, keep_anim) end

function Actor:onSetSprite(sprite, texture, keep_anim) end

function Actor:preSetAnimation(sprite, anim, callback) end

function Actor:onSetAnimation(sprite, anim, callback) end

function Actor:preResetSprite(sprite) end

function Actor:onResetSprite(sprite) end

function Actor:preSpriteUpdate(sprite) end

function Actor:onSpriteUpdate(sprite) end

function Actor:preSpriteDraw(sprite) end

function Actor:onSpriteDraw(sprite) end

function Actor:getName() end

function Actor:getWidth() end

function Actor:getHeight() end

function Actor:getSize() return self:getWidth(), self:getHeight() end

function Actor:getHitbox() end

function Actor:getColor() end

function Actor:getSpritePath() end

function Actor:getDefaultSprite() end

function Actor:getDefaultAnim() end

function Actor:getDefault() return self:getDefaultAnim() or self:getDefaultSprite() end

function Actor:getVoice() end

function Actor:getIndentString() end

function Actor:getPortraitPath() end

function Actor:getPortraitOffset() return unpack(self.portrait_offset or {0, 0}) end

function Actor:getFlipDirection(sprite) end

function Actor:hasTalkSprite(sprite) end

function Actor:getTalkSpeed(sprite) end

function Actor:getAnimation(anim) end

function Actor:hasOffset(sprite) end

function Actor:getOffset(sprite) return unpack(self.offsets[sprite] or {0, 0}) end

function Actor:createSprite() end

function Actor:parseSpriteOptions(full_sprite, ignore_frames) end

