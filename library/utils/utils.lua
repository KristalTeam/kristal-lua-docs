--[[
    Generated from Kristal\src\utils\utils.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/utils/utils.lua
]]

---@meta

Utils = {}

---@alias easetype
---| "linear"
---| "in-quad"
---| "in-cubic"
---| "in-quart"
---| "in-quint"
---| "in-sine"
---| "in-expo"
---| "in-circ"
---| "in-back"
---| "in-bounce"
---| "in-elastic"
---| "out-quad"
---| "out-cubic"
---| "out-quart"
---| "out-quint"
---| "out-sine"
---| "out-expo"
---| "out-circ"
---| "out-back"
---| "out-bounce"
---| "out-elastic"
---| "in-out-quad"
---| "in-out-cubic"
---| "in-out-quart"
---| "in-out-quint"
---| "in-out-sine"
---| "in-out-expo"
---| "in-out-circ"
---| "in-out-back"
---| "in-out-bounce"
---| "in-out-elastic"

---@alias point number[]
---@alias edge {[1]:point, [2]:point, ["angle"]:number}

--- @alias linefailure
---| "The lines are parallel."
---| "The lines don't intersect."

---@alias facing
---| "right"
---| "down"
---| "left"
---| "up"

---@alias pointxy { x: number, y: number }

---
--- Returns a substring of the specified string, properly accounting for UTF-8.
---
---@param s  string         # The initial string to get a substring of.
---@param i  number         # The index that the substring should start at.
---@param j? number         # The index that the substring should end at. (Defaults to -1, referring to the last character of the string)
---@return string substring # The new substring.
---
function Utils.sub(s,i,j) end

---
--- Returns whether every value in a table is true, iterating numerically.
---
---@generic T
---@param tbl T[]                # The table to iterate through.
---@param func? fun(v:T):boolean # If provided, each value of the table will instead be passed into the function, whose returned value will be considered instead of the table value itself.
---@return boolean result        # Whether every value was true or not.
---
function Utils.all(tbl, func) end

---
--- Returns whether any individual value in a table is true, iterating numerically.
---
---@generic T
---@param tbl T[]                # The table to iterate through.
---@param func? fun(v:T):boolean # If provided, each value of the table will instead be passed into the function, whose returned value will be considered instead of the table value itself.
---@return boolean result        # Whether any value was true or not.
---
function Utils.any(tbl, func) end

---
--- Makes a new copy of a table, giving it all of the same values.
---
---@generic T : table?
---@param tbl T          # The table to copy.
---@param deep? boolean  # Whether tables inside the specified table should be copied as well.
---@param seen? table    # *(Used internally)* A table of values used to keep track of which objects have been cloned.
---@return T new         # The new table.
---
function Utils.copy(tbl, deep, seen) end

---
--- Copies the values of one table into a different one.
---
---@param new_tbl table # The table receiving the copied values.
---@param tbl table     # The table to copy values from.
---@param deep? boolean # Whether tables inside the specified table should be copied as well.
---@param seen? table   # *(Used internally)* A table of values used to keep track of which objects have been cloned.
---
function Utils.copyInto(new_tbl, tbl, deep, seen) end

---
--- Empties a table of all defined values.
---
---@param tbl table # The table to clear.
---
function Utils.clear(tbl) end

---
--- Returns the name of a given class, using the name of the global variable for the class. \
--- If it cannot find a global variable associated with the class, it will instead return the name of the class it extends, along with the class's ID.
---
---@param class table           # The class instance to check.
---@param parent_check? boolean # Whether the function should only return the extended class, and not attach the class's ID, if the class does not have a global name.
---@return string? name         # The name of the class, or `nil` if it cannot find one.
---
function Utils.getClassName(class, parent_check) end

---
--- Returns a string converting a table value into readable text. Useful for debugging table values.
---
---@param o any          # The value to convert to a string.
---@return string result # The newly generated string.
---
function Utils.dump(o) end

---
--- Returns every numerically indexed value of a table. \
--- This fixes the issue with `unpack()` not returning `nil` values.
---
---@generic T
---@param t T[]  # The table to unpack.
---@return T ... # The values of the table.
---
function Utils.unpack(t) end

---
--- Splits a string into a new table of strings using a single character as a separator. \
--- More optimized than `Utils.split()`, at the cost of lacking features. \
--- **Note**: This function uses `gmatch`, so special characters must be escaped with a `%`.
---
---@param str string       # The string to separate.
---@param sep string       # The character used to split the main string.
---@return string[] result # The table containing the new split strings.
---
function Utils.splitFast(str, sep) end

---
--- Splits a string into a new table of strings using a substring as a separator. \
--- Less optimized than `Utils.splitFast()`, but allows separating with multiple characters, and is more likely to work for *any* string.
---
---@param str string            # The string to separate.
---@param sep string            # The substring used to split the main string.
---@param remove_empty? boolean # Whether strings containing no characters shouldn't be included in the result table.
---@return string[] result      # The table containing the new split strings.
---
function Utils.split(str, sep, remove_empty) end

---
--- Replaces a function within a class with a new function. \
--- Also allows calling the original function, allowing you to add code to the beginning or end of existing functions. \
--- `Utils.hook()` should always be called in `Mod:init()`. An example of how to hook a function is as follows:
--- ```lua
--- -- this code will hook 'Object:setPosition(x, y)', and will be run whenever that function is called
--- -- all class functions receive the object instance as the first argument. in this function, i name that argument 'obj', and it refers to whichever object is calling 'setPosition()'
--- Utils.hook(Object, "setPosition", function(orig, obj, x, y)
---     -- calls the original code (setting its position as normal)
---     orig(obj, x, y)
---     
---     -- sets 'new_x' and 'new_y' variables for the object instance
---     obj.new_x = x
---     obj.new_y = y
--- end)
--- ```
---
---@param target table                 # The class variable containing the function you want to hook.
---@param name string                  # The name of the function to hook.
---@param hook fun(orig:fun(...), ...) # The function containing the new code to replace the old code with. Receives the original function as an argument, followed by the arguments the original function receives.
---@param exact_func? boolean          # *(Used internally)* Whether the function should be replaced exactly, or whether it should be replaced with a function that calls the hook function. Should not be specified by users.
---
function Utils.hook(target, name, hook, exact_func) end

---
--- Returns a function that calls a new function, giving it an older function as an argument. \
--- Essentially, it's a version of `Utils.hook()` that works with local functions.
---
---@generic T : function
---@param old_func T                # The function to be passed into the new function.
---@param new_func fun(orig:T, ...) # The new function that will be called by the result function.
---@return T result_func            # A function that will call the new function, providing the original function as an argument, followed by any other arguments that this function receives.
---
function Utils.override(old_func, new_func) end

---
--- Returns whether two tables have an equivalent set of values.
---
---@param a table          # The first table to compare.
---@param b table          # The second table to compare.
---@param deep? boolean    # Whether table values within these tables should also be compared using `Utils.equal()`.
---@return boolean success # Whether the sets of values for the two tables were equivalent.
---
function Utils.equal(a, b, deep) end

---
--- Returns a table of file names within the specified directory, checking subfolders as well.
---
---@param dir string       # The file path to check, relative to the LÖVE Kristal directory.
---@param ext? string      # If specified, only files with the specified extension will be returned, and the extension will be stripped. (eg. `"png"` will only return .png files)
---@return string[] result # The table of file names.
---
function Utils.getFilesRecursive(dir, ext) end

---
--- Concatenates exclusively string values within a table.
---
---@param text table     # The table of values to combine.
---@return string result # The concatenated string.
---
function Utils.getCombinedText(text) end

---
--- Converts HSL values to RGB values. Both HSL and RGB should be values between 0 and 1.
---
---@param h number  # The hue value of the HSL color.
---@param s number  # The saturation value of the HSL color.
---@param l number  # The lightness value of the HSL color.
---@return number r # The red value of the converted color.
---@return number g # The green value of the converted color.
---@return number b # The blue value of the converted color.
---
--- *Source*: https://github.com/Wavalab/rgb-hsl-rgb
---
function Utils.hslToRgb(h, s, l) end

---
--- Converts RGB values to HSL values. Both RGB and HSL should be values between 0 and 1.
---
---@param r number  # The red value of the RGB color.
---@param g number  # The green value of the RGB color.
---@param b number  # The blue value of the RGB color.
---@return number h # The hue value of the converted color.
---@return number s # The saturation value of the converted color.
---@return number l # The lightness value of the converted color.
---
--- *Source*: https://github.com/Wavalab/rgb-hsl-rgb
---
function Utils.rgbToHsl(r, g, b) end

---
--- Converts HSV values to RGB values. Both HSV and RGB should be values between 0 and 1.
---
---@param h number  # The hue value of the HSV color.
---@param s number  # The saturation value of the HSV color.
---@param v number  # The 'value' value of the HSV color.
---@return number r # The red value of the converted color.
---@return number g # The green value of the converted color.
---@return number b # The blue value of the converted color.
---
--- *Source*: https://love2d.org/wiki/HSV_color
---
function Utils.hsvToRgb(h, s, v) end

---
--- Converts a hex color string to an RGBA color table.
---
---@param hex string     # The string to convert to RGB. The string *must* be formatted with a # at the start, eg. `"#ff00ff"`.
---@param value? number  # An optional number specifying the alpha the returned table should have.
---@return number[] rgba # The converted RGBA table.
---
--- *Source*: https://github.com/s-walrus/hex2color
---
function Utils.hexToRgb(hex, value) end

---
--- Converts a table of RGB values to a hex color string.
---
---@param rgb number[] # The RGB table to convert. Values should be between 0 and 1.
---@return string hex  # The converted hex string. Formatted with a # at the start, eg. "#ff00ff".
---
function Utils.rgbToHex(rgb) end

---
--- Converts a Tiled color property to an RGBA color table.
---
---@param property string # The property string to convert.
---@return number[]? rgba # The converted RGBA table.
---
function Utils.parseColorProperty(property) end

---
--- Merges the values of one table into another one.
---
---@param tbl table     # The table to merge values into.
---@param other table   # The table to copy values from.
---@param deep? boolean # Whether shared table values between the two tables should also be merged.
---@return table tbl    # The initial table, now containing new values.
---
function Utils.merge(tbl, other, deep) end

---
--- Merges a list of tables into a new table.
---
---@param ... table     # The list of tables to merge values from.
---@return table result # A new table containing the values of the series of tables provided.
---
function Utils.mergeMultiple(...) end

---
--- Returns whether a table contains exclusively numerical indexes.
---
---@param tbl table       # The table to check.
---@return boolean result # Whether the table contains only numerical indexes or not.
---
function Utils.isArray(tbl) end

---
--- Removes the specified value from the table.
---
---@generic T
---@param tbl table # The table to remove the value from.
---@param val T     # The value to be removed from the table.
---@return T? val   # The now removed value.
---
function Utils.removeFromTable(tbl, val) end

---
--- Whether the table contains the specified value.
---
---@param tbl table       # The table to check the value from.
---@param val any         # The value to check.
---@return boolean result # Whether the table contains the specified value.
---
function Utils.containsValue(tbl, val) end

---
--- Rounds the specified value down to the nearest integer.
---
---@param value number   # The value to round.
---@param to? number     # If specified, the value will instead be rounded down to the nearest multiple of this number.
---@return number result # The rounded value.
---
function Utils.floor(value, to) end

---
--- Rounds the specified value up to the nearest integer.
---
---@param value number   # The value to round.
---@param to? number     # If specified, the value will instead be rounded up to the nearest multiple of this number.
---@return number result # The rounded value.
---
function Utils.ceil(value, to) end

---
--- Rounds the specified value to the nearest integer.
---
---@param value number   # The value to round.
---@param to? number     # If specified, the value will instead be rounded to the nearest multiple of this number.
---@return number result # The rounded value.
---
function Utils.round(value, to) end

---
--- Rounds the specified value to the nearest integer towards zero.
---
---@param value number   # The value to round.
---@return number result # The rounded value.
---
function Utils.roundToZero(value) end

---
--- Rounds the specified value to the nearest integer away from zero.
---
---@param value number   # The value to round.
---@return number result # The rounded value.
---
function Utils.roundFromZero(value) end

---
--- Returns whether two numbers are roughly equal (less than 0.01 away from each other).
---
---@param a number        # The first value to compare.
---@param b number        # The second value to compare.
---@return boolean result # Whether the two values are roughly equal.
---
function Utils.roughEqual(a, b) end

---
--- Limits the specified value to be between 2 bounds, setting it to be the respective bound if it exceeds it.
---
---@param val number     # The value to limit.
---@param min number     # The minimum bound. If the value is less than this number, it is set to it.
---@param max number     # The maximum bound. If the value is greater than this number, it is set to it.
---@return number result # The new limited number.
---
function Utils.clamp(val, min, max) end

---
--- Returns the polarity of the specified value: -1 if it's negative, 1 if it's positive, and 0 otherwise.
---
---@param num number   # The value to check.
---@return number sign # The sign of the value.
---
function Utils.sign(num) end

---
--- Moves the specified value towards a target value by a specified amount, without exceeding the target. \
--- If the target is less than the value, then the amount will be subtracted from the value instead to approach it.
---
---@param val number     # The initial value.
---@param target number  # The target value to approach.
---@param amount number  # The amount the initial value should approach the target by.
---@return number result # The new value. If the value would have passed the target value, it will instead be set to the target.
---
function Utils.approach(val, target, amount) end

---
--- Moves the specified angle towards a target angle by a specified amount, properly accounting for wrapping around. \
--- Will always approach in the direction with the shorter distance.
---
---@param val number     # The initial angle.
---@param target number  # The target angle to approach.
---@param amount number  # The amount the initial angle should approach the target by.
---@return number result # The new angle. If the angle would have passed the target angle, it will instead be set to the target.
---
function Utils.approachAngle(val, target, amount) end

---
--- Returns a value between two numbers, determined by a percentage from 0 to 1. \
--- If given a table, it will lerp between each value in the table.
---
---@generic T : number|table
---@param a T          # The start value of the range.
---@param b T          # The end value of the range.
---@param t number     # The percentage (from 0 to 1) that determines the point on the specified range.
---@param oob? boolean # If true, then the percentage can be values beyond the range of 0 to 1.
---@return T result    # The new value from the range.
---
function Utils.lerp(a, b, t, oob) end

---
--- Lerps between two coordinates.
---
---@param x1 number     # The horizontal position of the first point.
---@param y1 number     # The vertical position of the first point.
---@param x2 number     # The horizontal position of the second point.
---@param y2 number     # The vertical position of the second point.
---@param t number      # The percentage (from 0 to 1) that determines the new point on the specified range between the specified points.
---@param oob? boolean  # If true, then the percentage can be values beyond the range of 0 to 1.
---@return number new_x # The horizontal position of the new point.
---@return number new_y # The vertical position of the new point.
---
function Utils.lerpPoint(x1, y1, x2, y2, t, oob) end

---
--- Returns a value eased between two numbers, determined by a percentage from 0 to 1.
---
---@param a number      # The start value of the range.
---@param b number      # The end value of the range.
---@param t number      # The percentage (from 0 to 1) that determines the point on the specified range.
---@param mode easetype # The ease type to use between the two values. (Refer to https://easings.net/)
---
function Utils.ease(a, b, t, mode) end

---
--- Maps a value between a specified range to its equivalent position in a new range.
---
---@param val number     # The initial value in the initial range.
---@param min_a number   # The start value of the initial range.
---@param max_a number   # The end value of the initial range.
---@param min_b number   # The start value of the new range.
---@param max_b number   # The end value of the new range.
---@param mode? easetype # If specified, the value's new position will be eased into the new range based on the percentage of its position in its initial range.
---@return number result # The value within the new range.
---
function Utils.clampMap(val, min_a, max_a, min_b, max_b, mode) end

---
--- Returns a value between two numbers, sinusoidally positioned based on the specified value.
---
---@param val number     # The number used to determine the sine position.
---@param min number     # The start value of the range.
---@param max number     # The end value of the range.
---@return number result # The sine-based value within the range.
---
function Utils.wave(val, min, max) end

---
--- Returns whether a value is between two numbers.
---
---@param val number       # The value to compare.
---@param a number         # The start value of the range.
---@param b number         # The end value of the range.
---@param include? boolean # Determines whether the function should consider being equal to a range value to be "between". (Defaults to false)
---@return boolean result  # Whether the value was within the range.
---
function Utils.between(val, a, b, include) end

function Utils.pushPerformance(name) end

function Utils.popPerformance() end

function Utils.printPerformance() end

---
--- Merges two colors based on a percentage between 0 and 1.
---
---@param start_color number[]   # The first table of RGBA values to merge.
---@param end_color number[]     # The second table of RGBA values to merge.
---@param amount number          # A percentage (from 0 to 1) that determines how much of the second color to merge into the first.
---@return number[] result_color # A new table of RGBA values.
---
function Utils.mergeColor(start_color, end_color, amount) end

---
--- Returns a table of line segments based on a set of polygon points.
---
---@param points point[] # An array of tables with two number values each, defining the points of a polygon.
---@return edge[] edges  # An array of tables containing four values each, defining line segments describing the edges of a polygon.
---
function Utils.getPolygonEdges(points) end

---
--- Determines whether a polygon's points are clockwise or counterclockwise.
---
---@param points point[]  # An array of tables with two number values each, defining the points of a polygon.
---@return boolean result # Whether the polygon is clockwise or not.
---
function Utils.isPolygonClockwise(points) end

---
--- Returns the point at which two lines intersect.
---
---@param l1p1x number          # The horizontal position of the first point for the first line.
---@param l1p1y number          # The vertical position of the first point for the first line.
---@param l1p2x number          # The horizontal position of the second point for the first line.
---@param l1p2y number          # The vertical position of the second point for the first line.
---@param l2p1x number          # The horizontal position of the first point for the second line.
---@param l2p1y number          # The vertical position of the first point for the second line.
---@param l2p2x number          # The horizontal position of the second point for the second line.
---@param l2p2y number          # The vertical position of the second point for the second line.
---@param seg1? boolean         # If true, the first line will be treated as a line segment instead of an infinite line.
---@param seg2? boolean         # If true, the second line will be treated as a line segment instead of an infinite line.
---@return number|boolean x     # If the lines intersected, this will be the horizontal position of the intersection; otherwise, this value will be `false`.
---@return number|linefailure y # If the lines intersected, this will be the vertical position of the intersection; otherwise, this will be a string describing why the lines did not intersect.
---
function Utils.getLineIntersect(l1p1x,l1p1y, l1p2x,l1p2y, l2p1x,l2p1y, l2p2x,l2p2y, seg1, seg2) end

---
--- Returns a new polygon with points offset outwards by a certain distance.
---
---@param points point[] # An array of tables with two number values each, defining the points of a polygon.
---@param dist number    # The distance to offset the points by. If this value is negative, the points will be offset inwards.
---@return point[] A     # new polygon array.
---
function Utils.getPolygonOffset(points, dist) end

---
--- Converts a set of polygon points to a series of numbers.
---
---@param points point[] # An array of tables with two number values each, defining the points of a polygon.
---@return number ...    # A series of numbers describing the horizontal and vertical positions of each point in the polygon.
---
function Utils.unpackPolygon(points) end

---
--- Returns the values of an RGB table individually.
---
---@param color number[] # An RGB(A) table.
---@return number r      # The red value of the color.
---@return number g      # The green value of the color.
---@return number b      # The blue value of the color.
---@return number a      # The alpha value of the color, or 1 if it was not specified.
---
function Utils.unpackColor(color) end

---
--- Returns a randomly generated decimal value. \
--- If no arguments are provided, the value is between 0 and 1. \
--- If `a` is provided, the value is between 0 and `a`. \
--- If `a` and `b` are provided, the value is between `a` and `b`. \
--- If `c` is provided, the value is between `a` and `b`, rounded to the nearest multiple of `c`.
---
---@param a? number   # The first argument.
---@param b? number   # The second argument.
---@param c? number   # The third argument.
---@return number rng # The new random value.
---
function Utils.random(a, b, c) end

---
--- Returns either -1 or 1.
---
---@return number sign # The new random sign.
---
function Utils.randomSign() end

---
--- Returns a table of 2 numbers, defining a vector in a random cardinal direction. (eg. `{0, -1}`)
---
---@return number[] vector # The vector table.
---
function Utils.randomAxis() end

---
--- Returns the coordinates a random point along the border of the specified rectangle.
---
---@param x number  # The horizontal position of the topleft of the rectangle.
---@param y number  # The vertical position of the topleft of the rectangle.
---@param w number  # The width of the rectangle.
---@param h number  # The height of the rectangle.
---@return number x # The horizontal position of a random point on the rectangle border.
---@return number y # The vertical position of a random point on the rectangle border.
---
function Utils.randomPointOnBorder(x, y, w, h) end

---
--- Returns a new table containing only values that a function returns true for.
---
---@generic T
---@param tbl T[]                 # An array of values.
---@param filter fun(v:T):boolean # A function that should return `true` for all values in the table to keep, and `false` for values to discard.
---@return T[] result             # A new array containing only approved values.
---
function Utils.filter(tbl, filter) end

---
--- Removes values from a table if a function does not return true for them.
---
---@generic T
---@param tbl T[]                 # An array of values.
---@param filter fun(v:T):boolean # A function that should return `true` for all values in the table to keep, and `false` for values to discard.
---
function Utils.filterInPlace(tbl, filter) end

---
--- Returns a random value from an array.
---
---@generic T
---@param tbl T[]                # An array of values.
---@param sort? fun(v:T):boolean # If specified, the table will be sorted via `Utils.filter(tbl, sort)` before selecting a value.
---@return T result              # The randomly selected value.
---
function Utils.pick(tbl, sort) end

---
--- Returns multiple random values from an array, not selecting any value more than once.
---
---@generic T
---@param tbl T[]                # An array of values.
---@param amount number          # The amount of values to select from the table.
---@param sort? fun(v:T):boolean # If specified, the table will be sorted via `Utils.filter(tbl, sort)` before selecting a value.
---@return T result              # A table containing the randomly selected values.
---
function Utils.pickMultiple(tbl, amount, sort) end

---
--- Returns a table containing the values of another table, randomly rearranged.
---
---@generic T
---@param tbl T[]     # An array of values.
---@return T[] result # The new randomly shuffled array.
---
function Utils.shuffle(tbl) end

---
--- Returns a table containing the values of an array in reverse order.
---
---@generic T
---@param tbl T[]       # An array of values.
---@param group? number # If defined, the values will be grouped into sets of the specified size, and those sets will be reversed.
---@return T[] result   # The new table containing the values of the specified array.
---
function Utils.reverse(tbl, group) end

---
--- Merges a list of tables containing values into a single table containing each table's contents.
---
---@generic T
---@param tbl T[][]     # The array of tables to merge.
---@param deep? boolean # If true, tables contained inside listed tables will also be merged.
---@return T[] result   # The new table containing all values.
---
function Utils.flatten(tbl, deep) end

---
--- Creates a table grouping values of a table into a series of tables.
---
---@generic T
---@param tbl T[]       # The table to group values from.
---@param count number  # The amount of values that should belong in each group. If the table does not divide evenly, the final group of the returned table will be incomplete.
---@return T[][] result # The table containing the grouped values.
---
function Utils.group(tbl, count) end

---
--- Returns the angle from one point to another, or from one object's position to another's.
---
---@param x1 number     # The horizontal position of the first point.
---@param y1 number     # The vertical position of the first point.
---@param x2 number     # The horizontal position of the second point.
---@param y2 number     # The vertical position of the second point.
---@return number angle # The angle from the first point to the second point.
---
---@overload fun(obj1:Object, obj2:Object): angle:number
---
function Utils.angle(x1,y1, x2,y2) end

---
--- Returns the distance between two angles, properly accounting for wrapping around.
---
---@param a number     # The first angle to compare.
---@param b number     # The second angle to compare.
---@return number diff # The difference between the two angles.
---
function Utils.angleDiff(a, b) end

---
--- Returns the distance between two points.
---
---@param x1 number    # The horizontal position of the first point.
---@param y1 number    # The vertical position of the first point.
---@param x2 number    # The horizontal position of the second point.
---@param y2 number    # The vertical position of the second point.
---@return number dist # The linear distance from the first point to the second point.
---
function Utils.dist(x1,y1, x2,y2) end

---
--- Returns whether a string contains a given substring. \
--- **Note**: This function uses `find`, so special characters must be escaped with a `%`.
---
---@param str string      # The string to check.
---@param filter string   # The substring that the string may contain.
---@return boolean result # Whether the string contained the specified substring.
---
function Utils.contains(str, filter) end

---
--- Returns whether a string starts with the specified substring, or a table starts with the specified series of values. \
--- The function will also return a second value, created by copying the inital value and removing the prefix.
---
---@generic T : string|table
---@param value T          # The value to check the beginning of.
---@param prefix T         # The prefix that should be checked.
---@return boolean success # Whether the value started with the specified prefix.
---@return T rest          # A new value created by removing the prefix substring or values from the initial value. If the result was unsuccessful, this value will simply be the initial unedited value.
---
function Utils.startsWith(value, prefix) end

---
--- Returns whether a string ends with the specified substring, or a table ends with the specified series of values. \
--- The function will also return a second value, created by copying the inital value and removing the suffix.
---
---@generic T : string|table
---@param value T          # The value to check the end of.
---@param suffix T         # The prefix that should be checked.
---@return boolean success # Whether the value ended with the specified suffix.
---@return T rest          # A new value created by removing the suffix substring or values from the initial value. If the result was unsuccessful, this value will simply be the initial unedited value.
---
function Utils.endsWith(value, suffix) end

function Utils.absoluteToLocalPath(prefix, image, path) end

---
--- Converts a string into a new string where the first letter of each "word" (determined by spaces between characters) will be capitalized.
---
---@param str string     # The initial string to edit.
---@return string result # The new string, in Title Case.
---
function Utils.titleCase(str) end

---
--- Returns how many indexes a table has, including non-numerical indexes.
---
---@param t table        # The table to check.
---@return number result # The amount of indexes found.
---
function Utils.tableLength(t) end

---
--- Returns a non-numerical index based on its position in a `pairs()` iterator.
---
---@param t table        # The table to get the index from.
---@param number number  # The numerical position the index will be at.
---@return number? index # The index found at the specified position.
---
function Utils.keyFromNumber(t, number) end

---
--- Returns a number based on the position of a specified key in a `pairs()` iterator.
---
---@param t table           # The table to get the position from.
---@param name any          # The key to find the position of.
---@return number? position # The numerical position of the specified index.
---
function Utils.numberFromKey(t, name) end

---
--- Returns the position of a specified value found within an array.
---
---@generic T
---@param t T[]             # The array to get the position from.
---@param value T           # The value to find the position of.
---@return number? position # The position found for the specified value.
---
function Utils.getIndex(t, value) end

---
--- Returns the non-numerical key of a specified value found within a table.
---
---@generic K, V
---@param t table<K,V> # The table to get the key from.
---@param value V      # The value to find the key of.
---@return K? key      # The key found for the specified value.
---
function Utils.getKey(t, value) end

---
--- Returns the value found for a string index, ignoring case-sensitivity.
---
---@generic V
---@param t table<any,V> # The table to get the value from.
---@param key string     # The index to check within the table.
---@return V? value      # The value found at the specified index, or `nil` if no similar index was found.
---
function Utils.getAnyCase(t, key) end

---
--- Limits the absolute value of a number between two positive numbers, then sets it to its original sign.
---
---@param value number   # The value to limit.
---@param min number     # The minimum bound. If the absolute value of the specified value is less than this number, it is set to it.
---@param max number     # The maximum bound. If the absolute value of the specified value is greater than this number, it is set to it.
---@return number result # The new limited number.
---
function Utils.absClamp(value, min, max) end

---
--- Returns the number closer to zero.
---
---@param a number       # The first number to compare.
---@param b number       # The second number to compare.
---@return number result # The specified number that was closer to zero than the other.
---
function Utils.absMin(a, b) end

---
--- Returns the number further from zero.
---
---@param a number       # The first number to compare.
---@param b number       # The second number to compare.
---@return number result # The specified number that was further from zero than the other.
---
function Utils.absMax(a, b) end

---
--- Returns a facing direction nearest to the specified angle.
---
---@param angle number      # The angle to convert.
---@return facing direction # The facing direction the specified angle is closest to.
---
function Utils.facingFromAngle(angle) end

---
--- Returns whether the specified angle is considered to be in the specified direction.
---
---@param facing facing   # The facing direction to compare.
---@param angle number    # The angle to compare.
---@return boolean result # Whether the angle is closest to the specified facing direction.
---
function Utils.isFacingAngle(facing, angle) end

---
--- Returns two numbers defining a vector based on the specified direction.
---
---@param facing facing # The facing direction to get the vector of.
---@return number x     # The horizontal factor of the specified direction.
---@return number y     # The vertical factor of the specified direction.
---
function Utils.getFacingVector(facing) end

---
--- Inserts a string into a different string at the specified position.
---
---@param str1 string    # The string to receive the substring.
---@param str2 string    # The substring to insert into the main string.
---@param pos number     # The position at which to insert the string.
---@return string result # The newly created string.
---
function Utils.stringInsert(str1, str2, pos) end

---
--- Returns a table with values based on Tiled properties. \
--- The function will check for a series of numbered properties starting with the specified `id` string, eg. `"id1"`, followed by `"id2"`, etc.
---
---@param id string        # The name the series of properties should all start with.
---@param properties table # The properties table of a Tiled event's data.
---@return table result    # The list of property values found.
---
function Utils.parsePropertyList(id, properties) end

---
--- Returns an array of tables with values based on Tiled properties. \
--- The function will check for a series of layered numbered properties started with the specified `id` string, eg. `"id1_1"`, followed by `"id1_2"`, `"id2_1"`, `"id2_2"`, etc. \
--- \
--- The returned table will contain a list of tables correlating to each individual list. \
--- For example, the first table in the returned array will contain the values for `"id1_1"` and `"id1_2"`, the second table will contain `"id2_1"` and `"id2_2"`, etc.
---
---@param id string        # The name the series of properties should all start with.
---@param properties table # The properties table of a Tiled event's data.
---@return table result    # The list of property values found.
---
function Utils.parsePropertyMultiList(id, properties) end

---
--- Returns a series of values used to determine the behavior of a flag property for a Tiled event.
---
---@param flag string|nil     # The name of the flag property.
---@param inverted string|nil # The name of the property used to determine if the flag should be inverted.
---@param value string|nil    # The name of the property used to determine what the flag's value should be compared to.
---@param default_value any   # If a property for the `value` name is not found, the value will be this instead.
---@param properties table    # The properties table of a Tiled event's data.
---@return string flag        # The name of the flag to check.
---@return boolean inverted   # Whether the result of the check should be inverted.
---@return any value          # The value that the flag should be compared to.
---
function Utils.parseFlagProperties(flag, inverted, value, default_value, properties) end

---
--- Returns a point at a certain distance along a path.
---
---@param path pointxy[] # An array of tables with X and Y values each, defining the coordinates of each point on the path.
---@param t number       # The distance along the path that the point should be at.
---@return number x      # The horizontal position of the point found on the path.
---@return number y      # The vertical position of the point found on the path.
---
function Utils.getPointOnPath(path, t) end

---
--- This function substitutes values from a table into a string using placeholders in the form of `{key}` or `{}`, where the latter indexes the table by number.
---
---@param str string     # The string to substitute values into.
---@param tbl table      # The table containing the values to substitute.
---@return string result # The formatted string.
---
function Utils.format(str, tbl) end

function Utils.findFiles(folder, base, path) end

---
--- Returns the actual GID and flip flags of a tile.
---
---@param id number          # The GID of the tile.
---@return integer gid       # The GID of the tile without the flags.
---@return boolean flip_x    # Whether the tile should be flipped horizontally.
---@return boolean flip_y    # Whether the tile should be flipped vertically.
---@return boolean flip_diag # Whether the tile should be flipped diagonally.
---
function Utils.parseTileGid(id) end

---
--- Creates a Collider based on a Tiled object shape.
---
---@param parent Object      # The object that the new Collider should be parented to.
---@param data table         # The Tiled shape data.
---@param x? number          # An optional value defining the horizontal position of the collider.
---@param y? number          # An optional value defining the vertical position of the collider.
---@param properties? table  # A table defining additional properties for the collider.
---@return Collider collider # The new Collider instance.
---
function Utils.colliderFromShape(parent, data, x, y, properties) end

---
--- Returns a string with a specified length, filling it with empty spaces by default. Used to make strings consistent lengths for UI. \
--- If the specified string has a length greater than the desired length, it will not be adjusted.
---
---@param str string         # The string to extend.
---@param len number         # The amount of characters the returned string should be.
---@param beginning? boolean # If true, the beginning of the string will be filled instead of the end.
---@param with? string       # If specified, the string will be filled with this specified string, instead of with spaces.
---@return string result     # The new padded result.
---
function Utils.padString(str, len, beginning, with) end

---
--- Limits the specified value to be between 2 bounds, wrapping around if it exceeds it.
---
---@param val number     # The value to wrap.
---@param min number     # The minimum bound. If not specified, defaults to `1` for array wrapping.
---@param max number     # The maximum bound.
---@return number result # The new wrapped number.
---
---@overload fun(val:number, max:number):number
---
function Utils.clampWrap(val, min, max) end

