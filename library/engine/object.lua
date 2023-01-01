--[[
    Generated from Kristal\src\engine\object.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/engine/object.lua
]]

---@meta

--- The base class of all objects in Kristal. \
--- When added to the stage, an object will be updated and rendered.
---
---@class Object
---@field x      number The horizontal position of the object, relative to its parent.
---@field y      number The vertical position of the object, relative to its parent.
---@field width  number The width of the object.
---@field height number The height of the object.
---
---@field init_x   number  The horizontal position of the object when it was created.
---@field init_y   number  The vertical position of the object when it was created.
---@field last_x   number  The horizontal position of the object in the previous frame.
---@field last_y   number  The vertical position of the object in the previous frame.
---
--- The color of the object in the form {R, G, B}. \
--- The values of R, G, and B are between 0 and 1.
---@field color table
---
---@field alpha    number  The alpha transparency of the object, between 0 (invisible) and 1 (fully visible).
---@field scale_x  number  The horizontal scale of the object.
---@field scale_y  number  The vertical scale of the object.
---@field rotation number  The rotation of the object, in radians. (`0` is right, positive is clockwise)
---@field flip_x   boolean Whether the object is flipped horizontally.
---@field flip_y   boolean Whether the object is flipped vertically.
---
---@field inherit_color boolean Whether the object's color will be multiplied by its parent's color.
---
---@field physics physics_table A table of data, defining ways the object should automatically move when updating.
---@field graphics graphics_table A table of data, defining ways the object's properties should automatically update.
---
--- The horizontal origin of the object. \
--- Origin is used to define the point that the object is scaled, rotated, and positioned from. \
--- This determines where the position (0, 0) is within the object. \
--- \
--- If `origin_exact` is false, the origin will be a ratio relative to the object's `width` and `height`, meaning an origin of 0.5, 0.5 will cause the object to be centered. \
--- If it is true, then the origin will be measured in exact pixels.
---@field origin_x number
--- The vertical origin of the object. \
--- Origin is used to define the point that the object is scaled, rotated, and positioned from. \
--- This determines where the position (0, 0) is within the object. \
--- \
--- If `origin_exact` is false, the origin will be a ratio relative to the object's `width` and `height`, meaning an origin of 0.5, 0.5 will cause the object to be centered. \
--- If it is true, then the origin will be measured in exact pixels.
---@field origin_y number
---@field origin_exact boolean Whether the object's origin is measured as a ratio of its `width` and `height`, or in exact pixels. (Defaults to false)
--- The horizontal scale origin of the object. \
--- Scale origin overrides the object's origin, and defines where the object will scale from.
---@field scale_origin_x number|nil
--- The vertical scale origin of the object. \
--- Scale origin overrides the object's origin, and defines where the object will scale from.
---@field scale_origin_y number|nil
---@field scale_origin_exact boolean Whether the object's scale origin is measured as a ratio of its `width` and `height`, or in exact pixels. (Defaults to false)
--- The horizontal rotation origin of the object. \
--- Rotation origin overrides the object's origin, and defines where the object will rotate from.
---@field rotation_origin_x number|nil
--- The vertical rotation origin of the object. \
--- Rotation origin overrides the object's origin, and defines where the object will rotate from.
---@field rotation_origin_y number|nil
---@field rotation_origin_exact boolean Whether the object's rotation origin is measured as a ratio of its `width` and `height`, or in exact pixels. (Defaults to false)
---
--- The horizontal camera origin of the object. (Defaults to 0.5) \
--- Camera origin defines what position on the object a camera attached to it should follow.
---@field camera_origin_x number
--- The vertical camera origin of the object. (Defaults to 0.5) \
--- Camera origin defines what position on the object a camera attached to it should follow.
---@field camera_origin_y number
---@field camera_origin_exact boolean Whether the object's camera origin is measured as a ratio of its `width` and `height`, or in exact pixels. (Defaults to false)
---
--- How much an object's position will be affected by the camera horizontally. \
--- A value of 1 means it fully moves with the camera (aka default behavior), and a value of 0 means it will not move at all when the camera moves. \
--- Parallax will only affect an object if its parent has a camera.
---@field parallax_x number|nil
--- How much an object's position will be affected by the camera vertically. \
--- A value of 1 means it fully moves with the camera (aka default behavior), and a value of 0 means it will not move at all when the camera moves. \
--- Parallax will only affect an object if its parent has a camera.
---@field parallax_y number|nil
---@field parallax_origin_x number The horizontal position on the object's parent that the object's parallax will orient around.
---@field parallax_origin_y number The vertical position on the object's parent that the object's parallax will orient around.
---@field camera Camera|nil A camera instance that will automatically move and scale the object and its children. Should be `nil` for most objects.
---
---@field cutout_left number|nil The amount of pixels to cut from the left of the object when drawing.
---@field cutout_top number|nil The amount of pixels to cut from the top of the object when drawing.
---@field cutout_right number|nil The amount of pixels to cut from the right of the object when drawing.
---@field cutout_bottom number|nil The amount of pixels to cut from the bottom of the object when drawing.
---
---@field draw_fx table A list of all DrawFX that are being applied to the object.
---
---@field debug_select boolean Whether the object can be selected by the Object Selection debug feature. (Defaults to true)
---@field debug_rect table|nil Defines the rectangle used for selecting the object with the Object Selection debug feature.
---
---@field timescale number A multiplier that determines the speed at which the object updates.
---
--- The layer of the object within its parent. \
--- Objects update and draw their children in order sorted by layer. Objects with a higher layer will update and draw later than objects with lower layers. \
--- \
--- All children of an object will draw at the same visual layer as the parent. In other words, a child cannot render above an object that is higher than its parent, even if its own layer is higher.
---@field layer number
---
---@field collider Collider|nil A Collider class used to check collision with other objects.
---@field collidable boolean Whether the object should be able to collide with other objects.
---
---@field active boolean Whether the object should update itself and its children.
---@field visible boolean Whether the object should draw itself and its children.
---
---@field draw_children_below number|nil If defined, children with a layer less than this value will be drawn underneath the object.
---@field draw_children_above number|nil If defined, children with a layer greater than this value will be drawn above the object.
---
---@field _dont_draw_children boolean *(Used internally)* Whether the object should draw its children or not.
---
---@field update_child_list boolean *(Used internally)* If true, the object will re-sort its children list.
---@field children_to_remove table *(Used internally)* A list of children for the object to remove next time it updates.
---
---@field parent Object|nil The object's parent.
---@field children table A list of all of this object's children.
---
---@overload fun(x?:number, y?:number, width?:number, height?:number) : Object
Object = {}

---@class physics_table
---@field speed_x           number  The horizontal speed of the object, in pixels per frame at 30FPS.
---@field speed_y           number  The vertical speed of the object, in pixels per frame at 30FPS.
---@field speed             number  The speed the object will move in the angle of its direction, in pixels per frame at 30FPS.
---@field direction         number  The angle at which the object will move, in radians.
---@field friction          number  The amount the object's speed will slow down, per frame at 30FPS.
---@field gravity           number  The amount the object's speed will accelerate towards its gravity direction, per frame at 30FPS.
---@field gravity_direction number  The angle at which the object's gravity will accelerate towards, in radians.
---@field spin              number  The amount this object's direction will change, in radians per frame at 30FPS.
---@field match_rotation    boolean Whether the object's rotation should also define its direction. (Defaults to false)
---@field move_target?      table   A table containing data defined by `Object:slideTo()` or `Object:slideToSpeed()`.
---@field move_path?        table   A table containing data defined by `Object:slidePath()`.

---@class graphics_table
---@field fade           number       The amount the object's alpha should approach its target value, per frame at 30FPS.
---@field fade_to        number       The target alpha to approach.
---@field fade_callback  function|nil A function that will be called when the object's alpha reaches its target value.
---@field grow_x         number       The amount the object's `scale_x` will increase, per frame at 30FPS.
---@field grow_y         number       The amount the object's `scale_y` will increase, per frame at 30FPS.
---@field grow           number       The amount the object's `scale_x` and `scale_y` will increase, per frame at 30FPS.
---@field remove_shrunk  boolean      If true, the object will remove itself if its scale goes below 0. (Defaults to false)
---@field spin           number       The amount the object's `rotation` will change, per frame at 30FPS.
---@field shake_x        number       The amount the object will shake in the `x` axis, per frame at 30FPS.
---@field shake_y        number       The amount the object will shake in the `y` axis, per frame at 30FPS.
---@field shake_friction number       The amount the object's shake will slow down, per frame at 30FPS.
---@field shake_delay    number       The time it takes for the object to invert its shake direction, in seconds.
---@field shake_timer    number       *(Used internally)* A timer used to invert the object's shake direction.

--- Begin caching the transforms of all objects. \
--- This should be called before any collision checks, and ended with Object.endCache(). \
--- If an object is moved mid-cache, call Object.uncache() on it.
function Object.startCache() end

--- End caching the transforms of all objects (started with Object.startCache()).
function Object.endCache() end

--- *(Called internally)* Clears all cached transforms, and force-stops caching.
function Object._clearCache() end

--- Uncache an object's transform, if Object.startCache() is active. \
--- This recalculates the object's transform and all of its children, incase it was moved.
function Object.uncache(obj) end

--- *(Called internally)* Uncaches an object's full transform, including all of its children.
function Object.uncacheFull(obj) end

function Object:init(x, y, width, height) end

--- *(Override)* Called every frame by its parent if the object is active. \
--- By default, updates its physics and graphics tables, and its children.
function Object:update() end

--- *(Override)* Called every frame by its parent during drawing if the object is visible. \
--- By default, draws its children.
function Object:draw() end

--- *(Override)* Called when the object is added to a parent object via `parent:addChild(self)` or `self:setParent(parent)`.
---@param parent Object The parent that the object is being added to.
function Object:onAdd(parent) end

--- *(Override)* Called when the object is removed from its parent object via `self:remove()`, `parent:removeChild(self)`, or `self:setParent(new_parent)`.
---@param parent Object The parent that the object is being removed from.
function Object:onRemove(parent) end

--- *(Override)* Called when the object is first added to the Game stage, via `parent:addChild(self)` or `self:setParent(parent)`. \
--- Will not be called when changing to a new parent via `self:setParent(new_parent)` if the object had a parent prior.
---@param stage Object The Stage object that the object is being added to.
function Object:onAddToStage(stage) end

--- *(Override)* Called when the object is removed from the Game stage via `self:remove()` or `parent:removeChild(self)`. \
--- Will not be called when changing to a new parent via `self:setParent(new_parent)`.
---@param stage Object The Stage object that the object was a child of.
function Object:onRemoveFromStage(stage) end

--- Resets all of the object's `physics` table values to their default values, \
--- making it so it will stop moving if it was before.
function Object:resetPhysics() end

--- Resets the object's `physics` and sets new values for it.
---@param physics physics_table A table of values to set for the object's physics.
function Object:setPhysics(physics) end

--- Resets all of the object's `graphics` table values to their default values, \
--- making it so it will stop transforming if it was before.
function Object:resetGraphics() end

--- Resets the object's `graphics` and sets new values for it.
---@param graphics graphics_table A table of values to set for the object's graphics transformation.
function Object:setGraphics(graphics) end

--- Moves the object's `x` and `y` values by the specified values.
---@param x      number How much to add to the object's `x` value.
---@param y      number How much to add to the object's `y` value.
---@param speed? number How much to multiply the `x` and `y` movement by. (Defaults to 1)
function Object:move(x, y, speed) end

--- Fades the object's `alpha` to the specified value over `time` seconds.
---@param target    number   The alpha value that the object's `alpha` should approach.
---@param time?     number   The amount of time, in seconds, that the fade should take. (Defaults to 1 second)
---@param callback? function A function that will be called when the alpha value is reached. Receives `self` as an argument.
function Object:fadeTo(target, time, callback) end

--- Fades the object's `alpha` to the specified value at a speed of `speed` per frame.
---@param target    number   The alpha value that the object's `alpha` should approach.
---@param speed?    number   The amount that the object's `alpha` should approach the target value, per frame at 30FPS. (Defaults to 0.04)
---@param callback? function A function that will be called when the alpha value is reached. Receives `self` as an argument.
function Object:fadeToSpeed(target, speed, callback) end

--- Fades the object's `alpha` to 0 over `time` seconds, then removes it.
---@param time? number The amount of time, in seconds, that the fade should take. (Defaults to 1 second)
function Object:fadeOutAndRemove(time) end

--- Fades the object's `alpha` to 0 at a speed of `speed` per frame, then removes it.
---@param speed? number The amount that the object's `alpha` should approach the target value, per frame at 30FPS. (Defaults to 0.04)
function Object:fadeOutSpeedAndRemove(speed) end

--- Makes the object shake by the specified amount.
---@param x?        number   The amount of shake in the `x` direction. (Defaults to `4`)
---@param y?        number   The amount of shake in the `y` direction. (Defaults to `0`)
---@param friction? number   The amount that the shake should decrease by, per frame at 30FPS. (Defaults to `0.5`)
---@param delay?    number   The time it takes for the object to invert its shake direction, in seconds. (Defaults to `2/30`)
function Object:shake(x, y, friction, delay) end

--- Stops the object from shaking.
function Object:stopShake() end

--- Moves the object's `x` and `y` values to the new specified position over `time` seconds.
---@param x      number   The new `x` value to approach.
---@param y      number   The new `y` value to approach.
---@param time?  number   The amount of time, in seconds, that the slide should take. (Defaults to 1 second)
---@param ease?  string   The ease type to use when moving to the new position. (Defaults to "linear")
---@param after? function A function that will be called when the target position is reached. Receives no arguments.
---@return boolean success Whether the sliding will occur. False if the object's current position is already at the specified position, and true otherwise.
---@overload fun(self:Object, marker:string, time?:number, ease?:string, after?:function): success:boolean
---@param marker string   A map marker whose position the object should approach.
---@param time?  number   The amount of time, in seconds, that the slide should take. (Defaults to 1 second)
---@param ease?  string   The ease type to use when moving to the new position. (Defaults to "linear")
---@param after? function A function that will be called when the target position is reached. Receives no arguments.
---@return boolean success Whether the sliding will occur. False if the object's current position is already at the specified position, and true otherwise.
function Object:slideTo(x, y, time, ease, after) end

--- Moves the object's `x` and `y` values to the new specified position at a speed of `speed` pixels per frame.
---@param x      number   The new `x` value to approach.
---@param y      number   The new `y` value to approach.
---@param speed? number   The amount that the object's `x` and `y` should approach the specified position, in pixels per frame at 30FPS. (Defaults to 4)
---@param after? function A function that will be called when the target position is reached. Receives no arguments.
---@overload fun(self:Object, marker:string, time?:number, ease?:string, after?:function): success:boolean
---@param marker string   A map marker whose position the object should approach.
---@param speed? number   The amount that the object's `x` and `y` should approach the specified position, in pixels per frame at 30FPS. (Defaults to 4)
---@param after? function A function that will be called when the target position is reached. Receives no arguments.
---@return boolean success Whether the sliding will occur. False if the object's current position is already at the specified position, and true otherwise.
function Object:slideToSpeed(x, y, speed, after) end

--- Moves the object along a path of points.
---@param path     table A table containing a list of tables with two number values in each, defining a list of points the object should follow.
---@param options? table A table defining additional properties that the path should use.
---| "time" # The amount of time, in seconds, that the object should take to travel along the full path.
---| "speed" # The speed at which the object should travel along the path, in pixels per frame at 30FPS.
---| "ease" # The ease type to use when travelling along the path. Unused if `speed` is specified instead of `time`. (Defaults to "linear")
---| "after" # A function that will be called when the end of the path is reached. Receives no arguments.
---| "move_func" # A function called every frame while the object is travelling along the path. Receives `self` and the `x` and `y` offset from the previous frame as arguments.
---| "relative" # Whether the path should be relative to the object's current position, or simply set its position directly.
---| "loop" # Whether the path should loop back to the first point when reaching the end, or if it should stop.
---| "reverse" # If true, reverse all of the points on the path.
---| "skip" # A number defining how many points of the path to skip.
---| "snap" # Whether the object's position should immediately "snap" to the first point, or if its initial position should be counted as a point on the path.
function Object:slidePath(path, options) end

--- Whether the object is colliding with another object or collider.
---@param other Object|Collider The object or collider to check collision with.
---@return boolean collided Whether the collision occurred or not.
function Object:collidesWith(other) end

--- Sets the object's `x` and `y` values to the specified position.
---@param x number The value to set `x` to.
---@param y number The value to set `y` to.
function Object:setPosition(x, y) end

--- Returns the position of the object.
---@return number x The `x` position of the object.
---@return number y The `y` position of the object.
function Object:getPosition() end

--- Sets the object's `width` and `height` values to the specified size.
---@param width   number The value to set `width` to.
---@param height? number The value to set `height` to. (Defaults to the `width` parameter)
function Object:setSize(width, height) end

--- Returns the size of the object.
---@return number width The `width` value of the object.
---@return number height The `height` value of the object.
function Object:getSize() end

--- Returns the width of the object, accounting for scale.
---@return number width The `width` of the object multiplied by its `scale_x`.
function Object:getScaledWidth() end

--- Returns the height of the object, accounting for scale.
---@return number height The `height` of the object multiplied by its `scale_y`.
function Object:getScaledHeight() end

--- Returns the size of the object, accounting for scale.
---@return number width The `width` of the object multiplied by its `scale_x`.
---@return number height The `height` of the object multiplied by its `scale_y`.
function Object:getScaledSize() return self:getScaledWidth(), self:getScaledHeight() end

--- Sets the object's `scale_x` and `scale_y` values to the specified scale.
---@param x  number The value to set `scale_x` to.
---@param y? number The value to set `scale_y` to. (Defaults to the `x` parameter)
function Object:setScale(x, y) end

--- Returns the scale of the object.
---@return number x The `scale_x` value of the object.
---@return number y The `scale_y` value of the object.
function Object:getScale() end

--- Sets the object's `color` and `alpha` values to the specified color.
---@param r  number The red value to set for the object's `color`.
---@param g  number The green value to set for the object's `color`.
---@param b  number The blue value to set for the object's `color`.
---@param a? number The value to set `alpha` to. (Doesn't change alpha if unspecified)
---@overload fun(self:Object, color:{r:number, g:number, b:number, a?:number})
---@param color table The value to set `color` to. Can optionally define a 4th value to set alpha.
function Object:setColor(r, g, b, a) end

--- Returns the values of the object's `color` and `alpha` values.
---@return number r The red value of the object's `color`.
---@return number g The green value of the object's `color`.
---@return number b The blue value of the object's `color`.
---@return number a The `alpha` value of the object.
function Object:getColor() end

--- Sets the object's `origin_x` and `origin_y` values to the specified origin, and sets `origin_exact` to false. \
--- The origin set by this function will therefore be a ratio relative to the object's width and height.
---@param x  number The value to set `origin_x` to.
---@param y? number The value to set `origin_y` to. (Defaults to the `x` parameter)
function Object:setOrigin(x, y) end

--- Returns the origin of the object, simplifying to be a ratio relative to its width and height if its current origin is exact.
---@return number x The horizontal origin of the object.
---@return number y The vertical origin of the object.
function Object:getOrigin() end

--- Sets the object's `origin_x` and `origin_y` values to the specified origin, and sets `origin_exact` to true. \
--- The origin set by this function will therefore be in exact pixels.
---@param x  number The value to set `origin_x` to.
---@param y? number The value to set `origin_y` to. (Defaults to the `x` parameter)
function Object:setOriginExact(x, y) end

--- Returns the origin of the object, multiplying to give the exact pixels if its current origin is not exact.
---@return number x The horizontal origin of the object.
---@return number y The vertical origin of the object.
function Object:getOriginExact() end

--- Sets the object's `scale_origin_x` and `scale_origin_y` values to the specified origin, and sets `scale_origin_exact` to false. \
--- The scaling origin set by this function will therefore be a ratio relative to the object's width and height.
---@param x  number The value to set `scale_origin_x` to.
---@param y? number The value to set `scale_origin_y` to. (Defaults to the `x` parameter)
function Object:setScaleOrigin(x, y) end

--- Returns the scaling origin of the object, simplifying to be a ratio relative to its width and height if its current scaling origin is exact. \
--- If the object doesn't have a scaling origin defined, it will return `self:getOrigin()` instead.
---@return number x The horizontal scaling origin of the object.
---@return number y The vertical scaling origin of the object.
function Object:getScaleOrigin() end

--- Sets the object's `scale_origin_x` and `scale_origin_y` values to the specified origin, and sets `scale_origin_exact` to true. \
--- The scaling origin set by this function will therefore be in exact pixels.
---@param x  number The value to set `scale_origin_x` to.
---@param y? number The value to set `scale_origin_y` to. (Defaults to the `x` parameter)
function Object:setScaleOriginExact(x, y) end

--- Returns the scaling origin of the object, multiplying to give the exact pixels if its current scaling origin is not exact. \
--- If the object doesn't have a scaling origin defined, it will return `self:getOriginExact()` instead.
---@return number x The horizontal scaling origin of the object.
---@return number y The vertical scaling origin of the object.
function Object:getScaleOriginExact() end

--- Sets the object's `rotation_origin_x` and `rotation_origin_y` values to the specified origin, and sets `rotation_origin_exact` to false. \
--- The rotation origin set by this function will therefore be a ratio relative to the object's width and height.
---@param x  number The value to set `rotation_origin_x` to.
---@param y? number The value to set `rotation_origin_y` to. (Defaults to the `x` parameter)
function Object:setRotationOrigin(x, y) end

--- Returns the rotation origin of the object, simplifying to be a ratio relative to its width and height if its current rotation origin is exact. \
--- If the object doesn't have a rotation origin defined, it will return `self:getOrigin()` instead.
---@return number x The horizontal rotation origin of the object.
---@return number y The vertical rotation origin of the object.
function Object:getRotationOrigin() end

--- Sets the object's `rotation_origin_x` and `rotation_origin_y` values to the specified origin, and sets `rotation_origin_exact` to true. \
--- The rotation origin set by this function will therefore be in exact pixels.
---@param x  number The value to set `rotation_origin_x` to.
---@param y? number The value to set `rotation_origin_y` to. (Defaults to the `x` parameter)
function Object:setRotationOriginExact(x, y) end

--- Returns the rotation origin of the object, multiplying to give the exact pixels if its current rotation origin is not exact. \
--- If the object doesn't have a rotation origin defined, it will return `self:getOriginExact()` instead.
---@return number x The horizontal rotation origin of the object.
---@return number y The vertical rotation origin of the object.
function Object:getRotationOriginExact() end

--- Sets the object's `camera_origin_x` and `camera_origin_y` values to the specified origin, and sets `camera_origin_exact` to false. \
--- The camera origin set by this function will therefore be a ratio relative to the object's width and height.
---@param x  number The value to set `camera_origin_x` to.
---@param y? number The value to set `camera_origin_y` to. (Defaults to the `x` parameter)
function Object:setCameraOrigin(x, y) end

--- Returns the camera origin of the object, simplifying to be a ratio relative to its width and height if its current camera origin is exact.
---@return number x The horizontal camera origin of the object.
---@return number y The vertical camera origin of the object.
function Object:getCameraOrigin() end

--- Sets the object's `camera_origin_x` and `camera_origin_y` values to the specified origin, and sets `camera_origin_exact` to true. \
--- The camera origin set by this function will therefore be in exact pixels.
---@param x  number The value to set `camera_origin_x` to.
---@param y? number The value to set `camera_origin_y` to. (Defaults to the `x` parameter)
function Object:setCameraOriginExact(x, y) end

--- Returns the camera origin of the object, multiplying to give the exact pixels if its current camera origin is not exact.
---@return number x The horizontal camera origin of the object.
---@return number y The vertical camera origin of the object.
function Object:getCameraOriginExact() end

--- *(Override)* \
--- By default, returns true.
---@return boolean attached Whether a Camera attached to this object should follow it.
function Object:isCameraAttachable() end

--- Sets the object's `parallax_x` and `parallax_y` to the specified parallax.
---@param x  number The value to set `parallax_x` to.
---@param y? number The value to set `parallax_y` to. (Defaults to the `x` parameter)
function Object:setParallax(x, y) end

--- Returns the parallax of the object.
---@return number x The `parallax_x` value of the object.
---@return number y The `parallax_y` value of the object.
function Object:getParallax() end

--- Sets the object's `parallax_origin_x` and `parallax_origin_y` values to the specified origin.
---@param x number The value to set `parallax_origin_x` to.
---@param y number The value to set `parallax_origin_y` to.
function Object:setParallaxOrigin(x, y) end

--- Returns the parallax origin of the object.
---@return number x The `parallax_origin_x` value of the object.
---@return number y The `parallax_origin_y` value of the object.
function Object:getParallaxOrigin() end

--- Returns the layer of the object.
---@return number The `layer` value of the object.
function Object:getLayer() end

--- Sets the object's `layer`, and updates its position in its parent's children list.
---@param layer number The value to set `layer` to.
function Object:setLayer(layer) end

--- Sets the object's `cutout` values to the specified cutout.
---@param left   number|nil The value to set `cutout_left` to.
---@param top    number|nil The value to set `cutout_top` to.
---@param right  number|nil The value to set `cutout_right` to.
---@param bottom number|nil The value to set `cutout_bottom` to.
function Object:setCutout(left, top, right, bottom) end

--- Returns the object's `cutout` values.
---@return number|nil The `cutout_left` value of the object.
---@return number|nil The `cutout_top` value of the object.
---@return number|nil The `cutout_right` value of the object.
---@return number|nil The `cutout_bottom` value of the object.
function Object:getCutout() end

--- Sets the object's speed in its `physics` table.
---@param x number The value to set `physics.speed_x` to.
---@param y number The value to set `physics.speed_y` to.
---@overload fun(self:Object, speed:number)
---@param speed number The value to set `physics.speed` to.
function Object:setSpeed(x, y) end

--- Returns the velocity and direction of the object's physics, converting `physics.speed_x` and `physics.speed_y` if necessary.
---@return number speed     The linear speed the object moves at.
---@return number direction The direction the object is moving in.
function Object:getSpeedDir() end

--- Returns the horizontal and vertical speed of the object's physics, converting `physics.speed` and `physics.direction` if necessary
---@return number speed_x The horizontal speed of the object.
---@return number speed_y The vertical speed of the object.
function Object:getSpeedXY() end

--- Sets the object's movement direction to the specified direction, or its rotation if `physics.match_rotation` is true.
---@param dir number The value to set `physics.direction` or `rotation` to.
function Object:setDirection(dir) end

--- Returns the object's `physics.direction`, or the object's `rotation` if `physics.match_rotation` is true.
---@return number dir The movement direction of the object.
function Object:getDirection() end

--- Returns the dimensions of the object's `collider` if that collider is a Hitbox.
---@return number The `x` position of the collider, relative to the object.
---@return number The `y` position of the collider, relative to the object.
---@return number The `width` of the collider, in pixels.
---@return number The `height` of the collider, in pixels.
function Object:getHitbox() end

--- Sets the object's `collider` to a new Hitbox with the specified dimensions.
---@param x number The `x` position of the collider, relative to the object.
---@param y number The `y` position of the collider, relative to the object.
---@param w number The `width` of the collider, in pixels.
---@param h number The `height` of the collider, in pixels.
function Object:setHitbox(x, y, w, h) end

--- *(Override)* Used by World to determine what position should be used when sorting its layer. \
--- By default, returns `self:getRelativePos(self.width/2, self.height)`.
---@return number x The horizontal position to use.
---@return number y The vertical position to use.
function Object:getSortPosition() end

--- *(Override)* \
--- By default, returns `self.debug_select`.
---@return boolean can_select Whether the object can be selected by the Object Selection debug feature.
function Object:canDebugSelect() end

--- *(Override)* Returns a table defining the rectangle to use for selecting the object with the Object Selection debug feature. \
--- By default, returns `self.debug_rect`, or a rectangle with the same width and height as the object if `self.debug_rect` is `nil`.
---@return table rectangle A table containing 4 number values, defining the `x`, `y`, `width` and `height` of the selection rectangle.
function Object:getDebugRectangle() end

--- *(Override)* \
--- By default, returns an empty table.
---@return table info A list of strings to display if the object is selected by the Object Selection debug feature.
function Object:getDebugInfo() end

--- *(Override)* Defines options that can be used when selecting the object with the Object Selection debug feature. \
--- By default, defines options that all objects use.
---@param context ContextMenu The menu object containing the debug options that can be used.
--- To define an option, use `context:addMenuItem(name: string, description: string, code: function)`, where:
--- - `name` defines the name that appears in the menu.
--- - `description` defines the text that appears when hovering over the option.
--- - `code` is the function that will be called when selecting the option.
---@return ContextMenu context The modified menu object.
function Object:getDebugOptions(context) end

--- Sets the object's relative origin to the specified values, and adjusts its position so that it stays in the same place visually.
---@param ox  number The value to set `origin_x` to.
---@param oy? number The value to set `origin_y` to. (Defaults to the `ox` parameter)
function Object:shiftOrigin(ox, oy) end

--- Sets the object's exact origin to the specified values, and adjusts its position so that it stays in the same place visually.
---@param ox  number The value to set `origin_x` to.
---@param oy? number The value to set `origin_y` to. (Defaults to the `ox` parameter)
function Object:shiftOriginExact(ox, oy) end

--- Sets the object's position relative to the topleft of the game window.
---@param x number The `x` position for the object.
---@param y number The `y` position for the object.
function Object:setScreenPos(x, y) end

--- Returns the object's position relative to the topleft of the game window.
---@return number x The `x` position of the object.
---@return number y The `y` position of the object.
function Object:getScreenPos() end

--- Returns the specified position for the object, relative to the object's stage.
---@param x number The `x` position relative to the object.
---@param y number The `y` position relative to the object.
---@return number x The new `x` position relative to the object's stage.
---@return number y The new `y` position relative to the object's stage.
function Object:localToScreenPos(x, y) end

--- Returns the specified position for the object's stage, relative to this object.
---@param x number The `x` position relative to the object's stage.
---@param y number The `y` position relative to the object's stage.
---@return number x The new `x` position relative to the object.
---@return number y The new `y` position relative to the object.
function Object:screenToLocalPos(x, y) end

--- Returns the specified position for the object, relative to another object.
---@param x      number The `x` position relative to the object.
---@param y      number The `y` position relative to the object.
---@param other? Object The object the returned values should be relative to.
---@return number x The new `x` position relative to the `other` object.
---@return number y The new `y` position relative to the `other` object.
function Object:getRelativePos(x, y, other) end

--- Returns the object's position, relative to another object.
---@param other Object The object the returned values should be relative to.
---@return number x The new `x` position relative to the `other` object.
---@return number y The new `y` position relative to the `other` object.
function Object:getRelativePosFor(other) end

---@return Object|nil stage The object's highest parent.
function Object:getStage() end

--- Returns the object's color and alpha. \
--- If the object's `inherit_color` is true, the result is multiplied by its parent's color and alpha, to get the color it should draw at.
---@return number r The red value of the object's draw color.
---@return number g The green value of the object's draw color.
---@return number b The blue value of the object's draw color.
---@return number a The object's draw alpha.
function Object:getDrawColor() end

--- Called during drawing to apply cutouts.
function Object:applyScissor() end

--- Adds a DrawFX to the object. \
--- DrawFX are classes that can apply visual effects to an object when drawing it. \
--- Each effect will be applied in sequence, with effects of higher priority rendering later.
---@param fx  DrawFX The DrawFX instance to add to the object.
---@param id? string An optional string ID that can be used to reference the DrawFX in other functions.
---@return DrawFX fx The DrawFX instance that was added to the object.
function Object:addFX(fx, id) end

--- Returns a DrawFX added to the object.
---@param id string|class|DrawFX A string referring to the ID of a DrawFX, the class type that a DrawFX includes, or a DrawFX instance.
---@return DrawFX|nil fx A DrawFX instance if the object has one that matches the ID, or `nil` otherwise.
function Object:getFX(id) end

--- Removes the specified DrawFX from the object.
---@param id string|class|DrawFX A string referring to the ID of a DrawFX, the class type that a DrawFX includes, or a DrawFX instance.
---@return DrawFX|nil fx The removed DrawFX instance if the object has one that matches the ID, or `nil` otherwise.
function Object:removeFX(id) end

function Object:applyTransformTo(transform, floor_x, floor_y) end

function Object:createTransform() end

function Object:getTransform() end

function Object:getFullTransform(i) end

---@return table hierarchy A table of all parents between this object and its stage (inclusive).
function Object:getHierarchy() end

--- Returns the object's scale, multiplied by its parent's full scale.
---@return number x The horizontal scale of the object.
---@return number y The vertical scale of the object.
function Object:getFullScale() end

--- Removes the object from its parent.
function Object:remove() end

---@param x? number The explosion's horizontal offset.
---@param y? number The explosion's vertical offset.
---@param dont_remove? boolean Whether the object should not be removed.
---@param options? table Additional properties.
---| "play_sound" # Whether it should play the sound. (Defaults to true)
---@return Explosion|nil
function Object:explode(x, y, dont_remove, options) end

--- Adds the specified object as a child to this object, and adds it to a stage if it was not added to one previously. \
--- Calls `child:onAdd(self)`.
---@param child Object The object to be added.
---@return Object child The object that was added.
function Object:addChild(child) end

--- Removes the specified object from this object's children, and removes it from its stage. \
--- Calls `child:onRemove(self)`.
---@param child Object The object to be removed.
---@return Object child The object that was removed.
function Object:removeChild(child) end

---@return boolean has_stage Whether the object has a parent or not.
function Object:isRemoved() end

--- Sets the object's parent, removing it from its previous parent if it had one.
---@param parent Object The object to add `self` to.
function Object:setParent(parent) end

--- Returns whether the object and its parents are active, determining whether the object should be updated or not.
---@return boolean active Whether the object and its parents are active.
function Object:isFullyActive() end

--- Returns whether the object and its parents are visible, determining whether the object should be drawn or not.
---@return boolean visible Whether the object and its parents are visible.
function Object:isFullyVisible() end

function Object:sortChildren() end

function Object:updateChildList() end

function Object:updateChildren() end

function Object:fullUpdate() end

function Object:preDraw(dont_transform) end

function Object:postDraw() end

function Object:drawChildren(min_layer, max_layer) end

function Object:drawSelf(no_children, dont_transform) end

function Object:fullDraw(no_children, dont_transform) end

function Object:shouldProcessDrawFX() end

function Object:processDrawFX(canvas, transformed) end

function Object:updatePhysicsTransform() end

function Object:updateGraphicsTransform() end

function Object:onClone(src) end

function Object:canDeepCopy() end

function Object:canDeepCopyKey(key) end

