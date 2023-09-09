--[[
    Generated from Kristal\src\kristal.lua

    Source: https://github.com/KristalTeam/Kristal/blob/main/src/kristal.lua
]]

---@meta

Kristal = {}

function Kristal.onKeyPressed(key, is_repeat) end

function Kristal.onKeyReleased(key) end

--- Kristal alternative to the default love.errorhandler. \
--- Called when an error occurs.
---@param  msg string|table     The error message.
---@return function|nil handler The error handler, called every frame instead of the main loop.
function Kristal.errorHandler(msg) end

--- Switches the Gamestate to the given one.
---@param state table|string The gamestate to switch to.
---| "Loading" # The loading state, before entering the main menu.
---| "Menu"    # The main menu state.
---| "Game"    # The game state, entered when loading a mod.
---| "Testing" # The testing state, used in development.
---@param ... any Arguments passed to the gamestate.
function Kristal.setState(state, ...) end

---@return table state The current Gamestate.
function Kristal.getState() end

---@return number runtime The current runtime (`RUNTIME`), affected by timescale / fast-forward.
function Kristal.getTime() end

--- Sets the master volume to the given value and saves it to the config.
---@param volume number The volume to set.
function Kristal.setVolume(volume) end

--- Called internally to make sure the correct cursor is displayed.
function Kristal.updateCursor() end

--- Hides the mouse cursor.
function Kristal.hideCursor() end

--- Shows the mouse cursor.
function Kristal.showCursor() end

--- Returns the current master volume from the config.
---@return number volume The current master volume.
function Kristal.getVolume() end

--- Clears all state expected to be changed by mods. \
--- Called internally when exiting or reloading a mod.
function Kristal.clearModState() end

--- Exits the current mod and returns to the Kristal menu.
function Kristal.returnToMenu() end

--- Reloads the current mod.
---@param mode string The mode to reload the mod in.
---| "temp" # Creates a temp-save and reloads the mod from there.
---| "save" # Reloads the mod from the last save.
---| "none" # Fully reloads the mod from the start of the game.
function Kristal.quickReload(mode) end

--- Clears all currently loaded assets. Called internally in the Loading state.
---@param include_mods boolean Whether to clear loaded mods.
function Kristal.clearAssets(include_mods) end

--- Loads assets of the specified type from the given directory, and calls the given callback when done.
---@param dir    string       The directory to load assets from.
---@param loader string       The type of assets to load.
---@param paths? string|table The specific asset paths to load.
---@param after? function     The function to call when done.
function Kristal.loadAssets(dir, loader, paths, after) end

--- Initializes the specified mod and loads its assets. \
--- If an `after` callback is not provided, enters the mod, including dark transition if enabled.
---@param id         string   The id of the mod to load.
---@param save_id?   number   The id of the save to load the mod from. (1-3)
---@param save_name? string   The name to use for the save file.
---@param after?     function The function to call after assets have been loaded.
function Kristal.loadMod(id, save_id, save_name, after) end

--- Loads assets from a mod and its libraries. Called internally by `Kristal.loadMod`.
---@param id           string       The id of the mod to load assets from.
---@param asset_type?  string       The type of assets to load. (Defaults to "all")
---@param asset_paths? string|table The specific asset paths to load.
---@param after        function     The function to call after assets have been loaded.
function Kristal.loadModAssets(id, asset_type, asset_paths, after) end

--- Called internally. Gets the intended title of the game window.
function Kristal.getDesiredWindowTitle() end

--- Called internally. Calls the `preInit` event on the mod and initializes the registry.
---@param id string        The id of the mod to pre-initialize.
---@return boolean success Whether the mod should use default handling to enter the game.
function Kristal.preInitMod(id) end

--- Called internally. Resets the window properties to the user config.
function Kristal.resetWindow() end

---@return boolean enabled  Whether borders are enabled.
function Kristal.bordersEnabled() end

--- Returns the dimensions of the screen border, or (0, 0) if borders are disabled.
---@return number width  The width of the border.
---@return number height The height of the border.
function Kristal.getBorderSize() end

--- Returns the dimensions of the screen border relative to the game's size.
---@return number width  The width of the border.
---@return number height The height of the border.
function Kristal.getRelativeBorderSize() end

---@return string|nil border The currently displayed border, or `nil` if borders are disabled.
function Kristal.getBorder() end

---@return string|nil border The currently displayed border if dynamic borders are enabled.
function Kristal.processDynamicBorder() end

--- Fades out the screen border.
---@param time?     number  The time it takes to fade out the border. Defaults to `0.5`.
---@param keep_old? boolean Whether the old border stays during fadeout. Defaults to `false`.
function Kristal.hideBorder(time, keep_old) end

--- Transitions the screen border, fading it out and then back in to the current border.
---@param time? number The total time it takes to fade in and out. Defaults to `1`.
function Kristal.transitionBorder(time) end

--- Fades in the screen border.
---@param time? number The time it takes to fade in the border. Defaults to `0.5`.
function Kristal.showBorder(time) end

---@return string name The name of the current border config option.
function Kristal.getBorderName() end

--- Returns the border data table for the given border config id.
---@param id string The id of the border to get.
---@return table data The border data.
function Kristal.getBorderData(id) end

---@return number scale The current game scale, based on the window dimensions.
function Kristal.getGameScale() end

--- Returns the offsets of the game display, for calculating screen position.
---@return number x The x offset.
---@return number y The y offset.
function Kristal.getSideOffsets() end

--- Called internally. Loads the saved user config, with default values.
---@return table config The user config.
function Kristal.loadConfig() end

--- Saves the current config table to the `settings.json`.
function Kristal.saveConfig() end

--- Saves the game.
---@param id?   number The save file index to save to. (Defaults to the currently loaded save index)
---@param data? table  The data to save to the file. (Defaults to the output of `Game:save()`)
function Kristal.saveGame(id, data) end

--- Loads the game from a save file.
---@param id?   number  The save file index to load. (Defaults to the currently loaded save index)
---@param fade? boolean Whether the game should fade in after loading. (Defaults to `false`)
function Kristal.loadGame(id, fade) end

--- Returns the data from the specified save file.
---@param id?   number    The save file index to load. (Defaults to the currently loaded save index)
---@param path? string    The save folder to load from. (Defaults to the current mod's save folder)
---@return table|nil data The data loaded from the save file, or `nil` if the file doesn't exist.
function Kristal.getSaveFile(id, path) end

--- Returns whether the specified save file exists.
---@param id?   number    The save file index to check. (Defaults to the currently loaded save index)
---@param path? string    The save folder to check. (Defaults to the current mod's save folder)
---@return boolean exists Whether the save file exists.
function Kristal.hasSaveFile(id, path) end

--- Returns whether the specified save folder has any save files.
---@param path? string    The save folder to check. (Defaults to the current mod's save folder)
---@return boolean exists Whether the save folder has any save files.
function Kristal.hasAnySaves(path) end

--- Saves the given data to a file in the save folder.
---@param file  string The file name to save to.
---@param data  table  The data to save.
---@param path? string The save folder to save to. (Defaults to the current mod's save folder)
function Kristal.saveData(file, data, path) end

--- Loads and returns the data from a file in the save folder.
---@param file  string    The file name to load.
---@param path? string    The save folder to load from. (Defaults to the current mod's save folder)
---@return table|nil data The data loaded from the file, or `nil` if the file doesn't exist.
function Kristal.loadData(file, path) end

--- Erases a file from the save folder.
---@param file  string The file name to erase.
---@param path? string The save folder to erase from. (Defaults to the current mod's save folder)
function Kristal.eraseData(file, path) end

--- Calls a function from the current `Mod`, if it exists.
---@param f   string The function name to call.
---@param ... any    The arguments to pass to the function.
---@return ...       The returned values from the function call, if it exists.
function Kristal.modCall(f, ...) end

--- Calls a function from the specified library, if it exists. \
--- If `id` is not specified, the function will be called in all libraries, and the return value \
--- will be `or`'d between libraries.
---@param id  string|nil The library ID to call the function from, or `nil` to call in all libraries.
---@param f   string     The function name to call.
---@param ... any        The arguments to pass to the function.
---@return ...           The returned values from the function call, if it exists.
function Kristal.libCall(id, f, ...) end

--- Calls a function from all libraries, and then the current mod.
---@param f   string  The function name to call.
---@param ... any     The arguments to pass to the function.
---@return any result The result of the function calls `or`'d together.
function Kristal.callEvent(f, ...) end

--- Gets a value from the current `Mod`.
---@param key string The key of the value to get.
---@return any value The value at the key, or `nil` if it doesn't exist.
function Kristal.modGet(key) end

--- Gets a value from the current mod's `mod.json`.
---@param key string The key of the value to get.
---@return any value The value at the key, or `nil` if it doesn't exist.
function Kristal.getModOption(key) end

--- Gets a library config option, defined in either `lib.json` or modified by the `mod.json`. \
--- Default values can be defined inside your library's `lib.json`:
--- ```json
--- "config": {
---    "option": "value"
--- }
--- ```
--- These can then be overridden inside a `mod.json` like so:
--- ```json
--- "config": {
---    "your_library_id": {
---        "option": "new value"
---    }
--- }
--- ```
---@param lib_id      string  The library ID to get the config option from.
---@param key         string  The key of the config option to get.
---@param merge?      boolean If the option is a table, whether to merge it with the default value. (Defaults to `false`)
---@param deep_merge? boolean If merge is enabled, whether to merge the tables deeply. (Defaults to `false`)
---@return any value          The value of the config option, or `nil` if it doesn't exist.
function Kristal.getLibConfig(lib_id, key, merge, deep_merge) end

--- Executes a `.lua` script inside the mod folder.
---@param path string      The script name to execute.
---@param ...  any         The arguments to pass to the script.
---@return boolean success Whether the script was executed successfully.
---@return any     ...     The returned values from the script.
function Kristal.executeModScript(path, ...) end

--- Executes a `.lua` script inside the specified library folder. \
--- If `id` is not specified, the first script found from any library will be executed.
---@param lib  string|nil  The library ID to execute the script from, or `nil` to execute from any library.
---@param path string      The script name to execute.
---@param ...  any         The arguments to pass to the script.
---@return boolean success Whether the script was executed successfully.
---@return any     ...     The returned values from the script.
function Kristal.executeLibScript(lib, path, ...) end

--- Clears all mod-defined hooks from `Utils.hook`, and restores the original functions. \
--- Called internally when a mod is unloaded.
function Kristal.clearModHooks() end

--- Removes all mod-defined classes from base classes' `__includers` table.
--- Called internally when a mod is unloaded.
function Kristal.clearModSubclasses() end

--- Executes a `.lua` script inside the mod folder.
---@param path string  The script name to execute.
---@param ...  any     The arguments to pass to the script.
---@return any ...     The returned values from the script.
---@diagnostic disable-next-line: lowercase-global
function modRequire(path, ...) end

--- Executes a `.lua` script inside the specified library folder.
---@param lib  string  The library ID to execute the script from.
---@param path string  The script name to execute.
---@param ...  any     The arguments to pass to the script.
---@return any ...     The returned values from the script.
---@diagnostic disable-next-line: lowercase-global
function libRequire(lib, path, ...) end

