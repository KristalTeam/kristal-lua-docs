--[[
    Generated from Kristal\src\engine\objects\sprite.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/objects/sprite.lua
]]

---@meta

--- A simple object that renders a texture. \
--- This texture must be placed inside `assets/sprites/`.
---
---@class Sprite : Object
---@field texture      love.Image|nil   *(Read-only)* The current texture of the sprite, if it exists.
---@field texture_path string|nil       *(Read-only)* The string ID of the current texture, if it exists.
---@field frames       love.Image[]|nil *(Read-only)* The animation frames of the sprite, or `nil` if the texture has no frames.
---@field frame        number           *(Read-only)* The current frame of the sprite. Set with `Sprite:setFrame()`.
---
--- The base path of the sprite. \
--- Any calls to `Sprite:setSprite()` will have this path prepended to them,\
--- only checking for textures inside this folder. \
--- **Note**: *This path is still relative to `assets/sprites/`!*
---@field path string
---
--- Whether this sprite's `width` and `height` will be updated to the size of the texture. \
--- Defaults to `true` if a width and height is not specified in the constructor.
---@field use_texture_size boolean
---@field wrap_texture_x   boolean  If enabled, the texture will repeat horizontally across the screen.
---@field wrap_texture_y   boolean  If enabled, the texture will repeat vertically across the screen.
---
---@field loop          boolean      Whether the sprite will continuously loop its animation. (Defaults to `false`)
---@field playing       boolean      *(Read-only)* Whether an animation is currently playing.
---@field anim_speed    number       A multiplier for how fast the sprite animates. (Defaults to `1`)
---@field anim_sprite   string       *(Read-only)* The name of the sprite used in the current animation.
---@field anim_delay    number       *(Read-only)* The delay between frames in the current animation.
---@field anim_frames   number[]|nil *(Read-only)* A list of frame indexes the current animation loops through. If `nil`, the animation loops through all frames.
---@field anim_duration number       *(Read-only)* The duration of the current animation. If greater than 0, the animation will stop after this many seconds.
---@field anim_waiting  number       *(Read-only)* Set by the `wait` function of an animation routine. The amount of time left until the animation continues.
---
---@field anim_callback     Sprite.anim_callback|nil  A function that is called when the current animation finishes.
---@field anim_routine      thread|nil                *(Read-only)* The coroutine of the current sprite animation.
---@field anim_routine_func Sprite.anim_func|nil      *(Read-only)* The function of the current sprite animation.
---@field anim_wait_func    Sprite.wait_func          *(Read-only)* The function used to wait for the next frame of the animation.
---
---@overload fun(texture:string|love.Image, x?:number, y?:number, width?:number, height?:number, path?:string) : Sprite
Sprite = {}

---@alias Sprite.wait_func     fun(seconds:number)
---@alias Sprite.anim_func     fun(wait:Sprite.wait_func)
---@alias Sprite.anim_callback fun(sprite:Sprite)

function Sprite:init(texture, x, y, width, height, path) end

---@see Object.canDebugSelect
function Sprite:canDebugSelect() end

--- Sets the wrapping mode of the sprite. \
--- The texture will repeat across the whole screen in the direction(s) specified.
---@param x  boolean  Whether the texture should repeat horizontally.
---@param y? boolean  Whether the texture should repeat vertically. If not specified, this will be the same as `x`.
function Sprite:setWrap(x, y) end

--- *(Called internally)* Updates the sprite's texture to its current frame. \
--- If the sprite has no frames, this will do nothing.
function Sprite:updateTexture() end

---@return love.Image|nil texture  The current texture of the sprite, if it exists.
function Sprite:getTexture() end

--- Sets the current frame to a percentage between 0 - 1. \
--- If `progress` is outside of this range, it will wrap around.
---@param progress number  The percentage (0 - 1) of the animation to set the frame to.
function Sprite:setProgress(progress) end

--- *(Called internally)* Gets the full path to the texture this sprite should use \
--- given a path by `Sprite:setSprite()`. If this sprite's `path` is not empty, \
--- it will be prepended to the given path.
---@param name string  The relative path of the sprite to get the full path of.
function Sprite:getPath(name) end

--- Sets the sprite to either a texture or an animation. \
--- If the given texture is a string or image, it will be passed into `Sprite:setSprite()`. \
--- If the given texture is a table, it will be passed into `Sprite:setAnimation()`.
---@param texture string|table|love.Image  The texture or animation to set the sprite to.
function Sprite:set(texture) end

--- Sets the current sprite.
---@param texture string|table|love.Image  The texture to set the sprite to. If this is a string, it will be relative to this sprite's `path`.
---@param keep_anim? boolean  If `true`, this will not interrupt the current animation. Otherwise, any animation will be stopped.
function Sprite:setSprite(texture, keep_anim) end

--- *(Called internally)* Sets the current sprite to a single texture.  \
--- **Note**: *Ignores `path` and frames. Use `Sprite:setSprite()` instead.*
---@param texture string|love.Image  The texture to set the sprite to.
---@param keep_anim? boolean  If `true`, this will not interrupt the current animation. Otherwise, any animation will be stopped.
function Sprite:setTexture(texture, keep_anim) end

--- *(Called internally)* Sets the current sprite to a single texture. \
--- **Note**: *Only for internal overrides. Use `Sprite:setSprite()` instead.*
function Sprite:setTextureExact(texture) end

--- Sets the frame of the current sprite. \
--- If the sprite has no frames, this will do nothing.
---@param frame number  The frame to set the sprite to. If this is outside of the range of frames, it will wrap around.
function Sprite:setFrame(frame) end

--- *(Called internally)* Sets the current sprite to a list of frames, and updates the texture.  \
--- **Note**: *Ignores `path` and single-frame textures. Use `Sprite:setSprite()` instead.*
---@param frames table  The frames to set the sprite to.
---@param keep_anim? boolean  If `true`, this will not interrupt the current animation. Otherwise, any animation will be stopped.
function Sprite:setFrames(frames, keep_anim) end

function Sprite:setAnimation(anim) end

function Sprite:parseFrames(frames) end

function Sprite:_basicAnimation(wait) end

function Sprite:play(speed, loop, on_finished) end

function Sprite:resume() end

function Sprite:stop(keep_frame) end

function Sprite:pause() end

function Sprite:flash(offset_x, offset_y, layer) end

function Sprite:onClone(src) end

function Sprite:update() end

function Sprite:draw() end

