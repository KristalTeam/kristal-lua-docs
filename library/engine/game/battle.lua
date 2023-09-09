--[[
    Generated from Kristal\src\engine\game\battle.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/game/battle.lua
]]

---@meta

---@class Battle : Object
---@overload fun(...) : Battle
Battle = {}

function Battle:init() end

function Battle:createPartyBattlers() end

function Battle:postInit(state, encounter) end

function Battle:showUI() end

function Battle:onRemove(parent) end

function Battle:setState(state, reason) end

function Battle:setSubState(state, reason) end

function Battle:getState() end

function Battle:onStateChange(old,new) end

function Battle:getSoulLocation(always_origin) end

function Battle:spawnSoul(x, y) end

function Battle:returnSoul(dont_destroy) end

function Battle:swapSoul(object) end

function Battle:resetAttackers() end

function Battle:onSubStateChange(old,new) end

function Battle:registerXAction(party, name, description, tp) end

function Battle:getEncounterText() end

function Battle:processCharacterActions() end

function Battle:processActionGroup(group) end

function Battle:tryProcessNextAction(force) end

function Battle:getCurrentActing() end

function Battle:beginAction(action) end

function Battle:retargetEnemy() end

function Battle:processAction(action) end

function Battle:getCurrentAction() end

function Battle:getActionBy(battler, ignore_current) end

function Battle:finishActionBy(battler) end

function Battle:finishAllActions() end

function Battle:allActionsDone() end

function Battle:clearActionIcon(battler) end

function Battle:markAsFinished(action, keep_animation) end

function Battle:finishAction(action, keep_animation) end

function Battle:endActionAnimation(battler, action, callback) end

function Battle:powerAct(spell, battler, user, target) end

function Battle:pushForcedAction(battler, action, target, data, extra) end

function Battle:pushAction(action_type, target, data, character_id, extra) end

function Battle:commitAction(battler, action_type, target, data, extra) end

function Battle:removeAction(character_id) end

function Battle:commitSingleAction(action) end

function Battle:removeSingleAction(action) end

function Battle:getPartyIndex(string_id) end

function Battle:getPartyBattler(string_id) end

function Battle:getEnemyBattler(string_id) end

function Battle:getEnemyFromCharacter(chara) end

function Battle:hasAction(character_id) end

function Battle:checkSolidCollision(collider) end

function Battle:shakeCamera(x, y, friction) end

function Battle:randomTargetOld() end

function Battle:randomTarget() end

function Battle:targetAll() end

function Battle:targetAny() end

function Battle:target(target) end

function Battle:getPartyFromTarget(target) end

function Battle:hurt(amount, exact, target) end

function Battle:setWaves(waves, allow_duplicates) end

function Battle:startProcessing() end

function Battle:setSelectedParty(index) end

function Battle:nextParty() end

function Battle:previousParty() end

function Battle:nextTurn() end

function Battle:checkGameOver() end

function Battle:returnToWorld() end

function Battle:setActText(text, dont_finish) end

function Battle:shortActText(text) end

function Battle:battleText(text,post_func) end

function Battle:infoText(text) end

function Battle:hasCutscene() end

function Battle:startCutscene(group, id, ...) end

function Battle:startActCutscene(group, id, dont_finish) end

function Battle:sortChildren() end

function Battle:update() end

function Battle:updateChildren() end

function Battle:updateIntro() end

function Battle:updateTransition() end

function Battle:updateTransitionOut() end

function Battle:updateAttacking() end

function Battle:updateWaves() end

function Battle:debugPrintOutline(string, x, y, color) end

function Battle:drawDebug() end

function Battle:draw() end

function Battle:drawBackground() end

function Battle:isWorldHidden() end

function Battle:canSelectMenuItem(menu_item) end

function Battle:isHighlighted(battler) end

function Battle:removeEnemy(enemy, defeated) end

function Battle:getActiveEnemies() end

function Battle:getActiveParty() end

function Battle:parseEnemyIdentifier(id) end

function Battle:getItemIndex() end

function Battle:isValidMenuLocation() end

function Battle:advanceBoxes() end

function Battle:getTargetForItem(item, default_ally, default_enemy) end

function Battle:clearMenuItems() end

function Battle:addMenuItem(tbl) end

function Battle:onKeyPressed(key) end

function Battle:handleActionSelectInput(key) end

function Battle:handleAttackingInput(key) end

function Battle:canDeepCopy() end

