--[[
    Generated from Kristal\src\utils\draw.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/utils/draw.lua
]]

---@meta

Draw = {}

function Draw.pushCanvas(...) end

function Draw.popCanvas(keep) end

function Draw.unlockCanvas(canvas) end

function Draw.pushCanvasLocks() end

function Draw.popCanvasLocks() end

function Draw.setCanvas(canvas, options) end

function Draw._clearUnusedCanvases() end

function Draw._clearStacks() end

function Draw.getScissor() end

function Draw.pushScissor() end

function Draw.popScissor() end

function Draw.scissor(x, y, w, h) end

function Draw.scissorPoints(x1, y1, x2, y2) end

function Draw.pushShader(shader, vars) end

function Draw.popShader() end

function Draw.setColor(r, g, b, a) end

function Draw.draw(...) end

function Draw.drawPart(texture, x, y, cx, cy, cw, ch, ...) end

function Draw.drawCanvas(canvas, ...) end

function Draw.drawCanvasPart(canvas, x, y, cx, cy, cw, ch, ...) end

function Draw.drawWrapped(drawable, wrap_x, wrap_y, x, y, r, sx, sy, ox, oy, kx, ky) end

--- Modes: `none`
--- - `none`: Creates a canvas based on object size and draws the object at 0,0 (not transformed)
---   - extra arguments: `no_children`, `pad_x`, `pad_y`
function Draw.captureObject(object, mode, ...) end

