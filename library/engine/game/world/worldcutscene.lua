--[[
    Generated from Kristal\src\engine\game\world\worldcutscene.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/world/worldcutscene.lua
]]

---@meta

---@class WorldCutscene : Cutscene
---@overload fun(...) : WorldCutscene
WorldCutscene = {}

function WorldCutscene:init(group, id, ...) end

function WorldCutscene:canEnd() end

function WorldCutscene:update() end

function WorldCutscene:onEnd() end

function WorldCutscene:getCharacter(id, index) end

function WorldCutscene:getEvent(id) end

function WorldCutscene:getEvents(name) end

function WorldCutscene:getMarker(name) end

function WorldCutscene:enableMovement() end

function WorldCutscene:disableMovement() end

function WorldCutscene:detachFollowers() end

function WorldCutscene:attachFollowers(return_speed) end

function WorldCutscene:attachFollowersImmediate() end

function WorldCutscene:alignFollowers(facing, x, y, dist) end

function WorldCutscene:interpolateFollowers() end

function WorldCutscene:resetSprites() end

function WorldCutscene:spawnNPC(actor, x, y, properties) end

function WorldCutscene:look(chara, dir) end

function WorldCutscene:walkTo(chara, x, y, time, facing, keep_facing, ease, after) end

function WorldCutscene:walkToSpeed(chara, x, y, speed, facing, keep_facing, after) end

function WorldCutscene:walkPath(chara, path, options) end

function WorldCutscene:setSprite(chara, sprite, speed) end

function WorldCutscene:setAnimation(chara, anim) end

function WorldCutscene:resetSprite(chara) end

function WorldCutscene:spin(chara, speed) end

function WorldCutscene:slideTo(obj, x, y, time, ease) end

function WorldCutscene:slideToSpeed(obj, x, y, speed) end

function WorldCutscene:slidePath(obj, path, options) end

function WorldCutscene:jumpTo(chara, ...) end

function WorldCutscene:shakeCharacter(chara, x, y, friction, delay) end

function WorldCutscene:shakeCamera(x, y, friction) end

function WorldCutscene:detachCamera() end

function WorldCutscene:attachCamera(time) end

function WorldCutscene:attachCameraImmediate() end

function WorldCutscene:setSpeaker(actor, talk) end

function WorldCutscene:setTextboxTop(top) end

---@overload fun(self: WorldCutscene, x: number, y: number, time?: number, ease?: easetype, after?: fun()) : fun(self: WorldCutscene)
---@overload fun(self: WorldCutscene, marker: string, time?: number, ease?: easetype, after?: fun()) : fun(self: WorldCutscene)
---@overload fun(self: WorldCutscene, chara: Character, time?: number, ease?: easetype, after?: fun()) : fun(self: WorldCutscene)
---@overload fun() : fun(self: WorldCutscene)
function WorldCutscene:panTo(...) end

---@overload fun(self: WorldCutscene, x: number, y: number, speed?: number, after?: fun()) : fun(self: WorldCutscene)
---@overload fun(self: WorldCutscene, marker: string, speed?: number, after?: fun()) : fun(self: WorldCutscene)
---@overload fun(self: WorldCutscene, chara: Character, speed?: number, after?: fun()) : fun(self: WorldCutscene)
---@overload fun() : fun(self: WorldCutscene)
function WorldCutscene:panToSpeed(...) end

function WorldCutscene:mapTransition(...) end

function WorldCutscene:loadMap(...) end

function WorldCutscene:fadeOut(speed, options) end

function WorldCutscene:fadeIn(speed, options) end

function WorldCutscene:text(text, portrait, actor, options) end

function WorldCutscene:closeText() end

function WorldCutscene:choicer(choices, options) end

function WorldCutscene:textChoicer(text, choices, portrait, actor, options) end

function WorldCutscene:startEncounter(encounter, transition, enemy, options) end

function WorldCutscene:showShop() end

function WorldCutscene:hideShop() end

