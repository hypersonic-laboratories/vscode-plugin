-- Widget class
-- The Widget class supports spawning Unreal Widgets classes through scripting and manipulate them such as Blueprints!
Widget = {}

-- Widget functions
-- @param visibility (WidgetVisibility) 
-- Sets the visibility in screen
function Widget:SetVisibility(visibility) end

-- @return WidgetVisibility 
-- Returns the current WebUI visibility
function Widget:GetVisibility() end


-- Enables the focus on this Widget (i.e. can receive Keyboard input and will trigger input events)
function Widget:SetFocus() end


-- Puts this Widget in the front of all WebUIs and Widgets
function Widget:BringToFront() end


-- Adds it to the game's viewport and fills the entire screen
function Widget:AddToViewport() end

-- @param other (WebUI|Widget) 
-- Adds a new child widget to this Widget container, if this is a <a href='https://docs.unrealengine.com/5.1/en-US/API/Runtime/UMG/Components/UPanelWidget/'>Panel</a>
function Widget:AddChild(other) end

-- @param slot_name (string) 
-- @param widget (Widget?) Pass it nil to remove it
-- Sets the widget for a given <a href='https://docs.unrealengine.com/5.0/en-US/using-named-slots-in-umg-for-unreal-engine/'>slot</a> by name, if this is a <a href='https://docs.unrealengine.com/5.1/en-US/API/Runtime/UMG/Blueprint/UUserWidget/'>UserWidget</a>
function Widget:SetContentForSlot(slot_name, widget) end

-- @param screen_location/offset_left_top (Vector2D) 
-- @param size/offset_right_bottom (Vector2D) 
-- @param anchors_min (Vector2D) 
-- @param anchors_max (Vector2D) 
-- @param alignment (Vector2D) 
-- Sets the Layout as Canvas on Screen
function Widget:SetCanvasLayout(screen_location, size, anchors_min, anchors_max, alignment) end

-- @param event_name (string) Event or Function name
-- @param ... (any) Sequence of arguments to pass to the event
-- @return any the function return values
-- Calls a Blueprint Event or Function
function Widget:CallBlueprintEvent(event_name, ...) end

-- @param dispatcher_name (string) Event Dispatcher name
-- @param callback (function) Callback function to call (the first argument is the blueprint itself)
-- @return function the callback itself
-- Assigns and Binds a Blueprint Event Dispatcher
function Widget:BindBlueprintEventDispatcher(dispatcher_name, callback) end

-- @param dispatcher_name (string) Event Dispatcher name
-- @param callback (function) Optional callback to unbind
-- Unbinds a Blueprint Event Dispatcher
function Widget:UnbindBlueprintEventDispatcher(dispatcher_name, callback) end

-- @param property_name (string) 
-- @param value (any) 
-- Sets a Blueprint Property/Variable value directly
function Widget:SetBlueprintPropertyValue(property_name, value) end

-- @param property_name (string) 
-- @return any the value
-- Gets a Blueprint Property/Variable value
function Widget:GetBlueprintPropertyValue(property_name) end

-- Widget events
