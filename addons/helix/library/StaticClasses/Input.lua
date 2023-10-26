-- Input static class
-- Create custom keybindings and retrieve input information.
Input = {}

-- @param binding_name (string) The keybinding id
-- @param input_event (InputEvent) Which event to register (Released/Pressed)
-- @param callback (function) The function to trigger
-- Binds a function to an Input defined using <code>Register</code> or from the game
function Input:Bind(binding_name, input_event, callback) end

-- @param binding_name (string) The keybinding id
-- @param input_event (InputEvent) Which event to register (Released/Pressed)
-- Unbinds an Input function
function Input:Unbind(binding_name, input_event) end

-- @param binding_name (string) The keybinding id
-- @param key_name (string) 
-- Registers a keybinding to a default key
function Input:Register(binding_name, key_name) end

-- @param binding_name (string) The keybinding id
-- @param key_name (string) 
-- Unregisters a keybinding
function Input:Unregister(binding_name, key_name) end

-- @param key_name (string) 
-- @param dark_mode (boolean) 
-- @return string 
-- Gets the icon path of a key
function Input:GetKeyIcon(key_name, dark_mode) end

-- @param key_name (string) 
-- @return integer 
-- Gets the key code of a key
function Input:GetKeyCode(key_name) end

-- @return KeyModifier 
-- Gets the currently pressed modifier keys
function Input:GetModifierKeys() end

-- @param binding_name (string) The keybinding id
-- @return string[] list of all keys
-- Returns the keys bound to a keybinding
function Input:GetMappedKeys(binding_name) end


-- Resets all bound functions by this Package
function Input:ResetBindings() end

-- @return table in the format <code>{ "[BINDING_NAME]" = { "[KEY_01]", "[KEY_02]", ... }, ... }</code>
-- Returns a table with all Scripting KeyBindings
function Input:GetScriptingKeyBindings() end

-- @return table in the format <code>{ "[BINDING_NAME]" = { "[KEY_01]", "[KEY_02]", ... }, ... }</code>
-- Returns a table with all Game KeyBindings
function Input:GetGameKeyBindings() end

-- @param enable_input (boolean) 
-- Toggles Local Player input
function Input:SetInputEnabled(enable_input) end

-- @param is_enabled (boolean) 
-- Displays/Hides Mouse Cursor
function Input:SetMouseEnabled(is_enabled) end

-- @param cursor_type (CursorType) 
-- Sets the current Mouse Cursor type
function Input:SetMouseCursor(cursor_type) end

-- @param key_name (string) Key Name to input
-- @param input_event (InputEvent) Which Event to input
-- @param amount_depressed (float) The amount pressed
-- Forces an Input Key event on Local Player
function Input:InputKey(key_name, input_event, amount_depressed) end

-- @param key_name (string) 
-- @return boolean if the key is pressed
-- Returns if a key is being pressed
function Input:IsKeyDown(key_name) end

-- @return boolean if the mouse is visible
-- 
function Input:IsMouseEnabled() end

-- @return boolean if the input is visible
-- 
function Input:IsInputEnabled() end

