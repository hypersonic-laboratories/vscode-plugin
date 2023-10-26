-- WebUI class
-- Class for spawning a dynamic Web Browser.
WebUI = {}

-- WebUI functions

-- Puts this WebUI in the front of all WebUIs and Widgets
function WebUI:BringToFront() end

-- @param event_name (string) The Event Name to trigger the event
-- @param ... (any) Arguments to pass to the event
-- Calls an Event on the Browser's JavaScript
function WebUI:CallEvent(event_name, ...) end

-- @param url (HTMLPath) 
-- Loads a new File/URL in this Browser
function WebUI:LoadURL(url) end

-- @param html (string) 
-- Loads a pure HTML in this Browser
function WebUI:LoadHTML(html) end

-- @return string 
-- Gets this WebUI name
function WebUI:GetName() end

-- @param javascript_code (string) 
-- Executes a JavaScript code in the Browser
function WebUI:ExecuteJavaScript(javascript_code) end


-- Enables the focus on this browser (i.e. can receive Keyboard input and will trigger input events)
function WebUI:SetFocus() end


-- Removes the focus from this WebUI (and sets it back to game viewport)
function WebUI:RemoveFocus() end

-- @param screen_location/offset_left_top (Vector2D) 
-- @param size/offset_right_bottom (Vector2D) 
-- @param anchors_min (Vector2D) 
-- @param anchors_max (Vector2D) 
-- @param alignment (Vector2D) 
-- Sets the Layout as Canvas on Screen
function WebUI:SetLayout(screen_location, size, anchors_min, anchors_max, alignment) end

-- @param freeze (boolean) 
-- Freezes the WebUI Rendering to the surface (it will still execute the JS under the hood)
function WebUI:SetFreeze(freeze) end

-- @param visibility (WidgetVisibility) 
-- Sets the visibility in screen
function WebUI:SetVisibility(visibility) end

-- @param location (Vector) 
-- @param is_2d (boolean) 
-- @param volume (float) 
-- @param inner_radius (integer) 
-- @param falloff_distance (integer) 
-- @param attenuation_function (AttenuationFunction) 
-- @return Sound 
-- Spawns a Sound entity to plays this WebUI sound
function WebUI:SpawnSound(location, is_2d, volume, inner_radius, falloff_distance, attenuation_function) end

-- @param mouse_x (integer) Position X of the mouse
-- @param mouse_y (integer) Position Y of the mouse
-- @param delta_x (float) 
-- @param delta_y (float) 
-- Sends a Mouse Event into the WebUI programatically
function WebUI:SendMouseWheelEvent(mouse_x, mouse_y, delta_x, delta_y) end

-- @param key_type (WebUIKeyType) 
-- @param key_code (integer) 
-- @param modifiers (WebUIModifier) Supports several modifiers separating by <code>|</code> (using bit-wise operations)
-- Sends a Key Event into the WebUI programatically
function WebUI:SendKeyEvent(key_type, key_code, modifiers) end

-- @param mouse_x (integer) Position X of the mouse
-- @param mouse_y (integer) Position Y of the mouse
-- @param modifiers (WebUIModifier) Supports several modifiers separating by <code>|</code> (using bit-wise operations)
-- @param mouse_leave (boolean) 
-- Sends a Mouse Move Event into the WebUI programatically
function WebUI:SendMouseMoveEvent(mouse_x, mouse_y, modifiers, mouse_leave) end

-- @param mouse_x (integer) Position X of the mouse
-- @param mouse_y (integer) Position Y of the mouse
-- @param mouse_type (WebUIMouseType) Which mouse button
-- @param is_mouse_up (boolean) Whether the event was up or down
-- @param modifiers (WebUIModifier) Supports several modifiers separating by <code>|</code> (using bit-wise operations)
-- @param click_count (integer) Use 2 for double click event
-- Sends a Mouse Click into the WebUI programatically
function WebUI:SendMouseClickEvent(mouse_x, mouse_y, mouse_type, is_mouse_up, modifiers, click_count) end

-- @return Vector2D 
-- Gets the current size of this WebUI
function WebUI:GetSize() end

-- @return WidgetVisibility 
-- Returns the current WebUI visibility
function WebUI:GetVisibility() end

-- @return boolean 
-- Returns if this WebUI is currently frozen
function WebUI:IsFrozen() end

-- WebUI events
-- @param error_code (integer)
-- @param message (string)
-- Triggered when this page fails to load
WebUI.Fail = function(error_code, message) end


-- Triggered when this page is fully loaded
WebUI.Ready = function() end

