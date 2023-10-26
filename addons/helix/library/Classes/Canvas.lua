-- Canvas class
-- Canvas is an entity which you can draw onto it.
Canvas = {}

-- Canvas functions
-- @param screen_position (Vector2D) 
-- @param screen_size (Vector2D) 
-- @param thickness (float) 
-- @param render_color (Color) 
-- @param blend_mode (BlendMode) 
-- Draws an unfilled box on the Canvas
function Canvas:DrawBox(screen_position, screen_size, thickness, render_color, blend_mode) end

-- @param screen_position_a (Vector2D) 
-- @param screen_position_b (Vector2D) 
-- @param thickness (float) 
-- @param render_color (Color) 
-- @param blend_mode (BlendMode) 
-- Draws a line on the Canvas
function Canvas:DrawLine(screen_position_a, screen_position_b, thickness, render_color, blend_mode) end

-- @param material_path (MaterialPath) 
-- @param screen_position (Vector2D) 
-- @param screen_size (Vector2D) 
-- @param coordinate_position (Vector2D) 
-- @param coordinate_size (Vector2D) 
-- @param rotation (float) 
-- @param pivot_point (Vector2D) 
-- @param blend_mode (BlendMode) 
-- Draws a Material on the Canvas
function Canvas:DrawMaterial(material_path, screen_position, screen_size, coordinate_position, coordinate_size, rotation, pivot_point, blend_mode) end

-- @param webui_entity (WebUI) 
-- @param screen_position (Vector2D) 
-- @param screen_size (Vector2D) 
-- @param coordinate_position (Vector2D) 
-- @param coordinate_size (Vector2D) 
-- @param rotation (float) 
-- @param pivot_point (Vector2D) 
-- @param blend_mode (BlendMode) 
-- Draws a WebUI on the Canvas
function Canvas:DrawMaterialFromWebUI(webui_entity, screen_position, screen_size, coordinate_position, coordinate_size, rotation, pivot_point, blend_mode) end

-- @param scenecapture_entity (SceneCapture) 
-- @param screen_position (Vector2D) 
-- @param screen_size (Vector2D) 
-- @param coordinate_position (Vector2D) 
-- @param coordinate_size (Vector2D) 
-- @param rotation (float) 
-- @param pivot_point (Vector2D) 
-- @param blend_mode (BlendMode) 
-- Draws a SceneCapture on the Canvas
function Canvas:DrawMaterialFromSceneCapture(scenecapture_entity, screen_position, screen_size, coordinate_position, coordinate_size, rotation, pivot_point, blend_mode) end

-- @param text (string) 
-- @param screen_position (Vector2D) 
-- @param font_type (FontType) 
-- @param font_size (integer) 
-- @param text_color (Color) 
-- @param kerning (float) 
-- @param center_x (boolean) 
-- @param center_y (boolean) 
-- @param shadow_color (Color) 
-- @param shadow_offset (Vector2D) 
-- @param outlined (boolean) 
-- @param outline_color (Color) 
-- Draws a Text on the Canvas
function Canvas:DrawText(text, screen_position, font_type, font_size, text_color, kerning, center_x, center_y, shadow_color, shadow_offset, outlined, outline_color) end

-- @param texture_path (ImagePath) 
-- @param screen_position (Vector2D) 
-- @param screen_size (Vector2D) 
-- @param coordinate_position (Vector2D) 
-- @param coordinate_size (Vector2D) 
-- @param render_color (Color) 
-- @param blend_mode (BlendMode) 
-- @param rotation (float) 
-- @param pivot_point (Vector2D) 
-- Draws a Texture on the Canvas
function Canvas:DrawTexture(texture_path, screen_position, screen_size, coordinate_position, coordinate_size, render_color, blend_mode, rotation, pivot_point) end

-- @param texture_path (ImagePath) Pass empty to use default white Texture
-- @param screen_position (Vector2D) 
-- @param radius (Vector2D) 
-- @param number_of_sides (integer) 
-- @param render_color (Color) 
-- @param blend_mode (BlendMode) 
-- Draws a N-Polygon on the Canvas
function Canvas:DrawPolygon(texture_path, screen_position, radius, number_of_sides, render_color, blend_mode) end

-- @param texture_path (ImagePath) Pass empty to use default white Texture
-- @param screen_position (Vector2D) 
-- @param screen_size (Vector2D) 
-- @param render_color (Color) 
-- @param blend_mode (BlendMode) 
-- Draws a filled Rect on the Canvas
function Canvas:DrawRect(texture_path, screen_position, screen_size, render_color, blend_mode) end

-- @param auto_repaint_rate (boolean) 
-- Sets the repaint rate
function Canvas:SetAutoRepaintRate(auto_repaint_rate) end

-- @return Vector2D the current size
-- Gets the Canvas Size
function Canvas:GetSize() end

-- @param width (integer) 
-- @param height (integer) 
-- Resizes the Canvas if not using auto_resize
function Canvas:Resize(width, height) end

-- @param screen_position (Vector2D) 
-- Sets the Canvas Screen Position offset
function Canvas:SetScreenPosition(screen_position) end

-- @param auto_resize (boolean) 
-- Sets if the canvas should auto resize to screen size
function Canvas:SetAutoResize(auto_resize) end

-- @param visible (boolean) 
-- Sets if it's visible on screen
function Canvas:SetVisibility(visible) end


-- Forces the repaint
function Canvas:Repaint() end

-- @param clear_color (Color) 
-- Clear the Canvas with a specific Color
function Canvas:Clear(clear_color) end

-- Canvas events
-- @param self (Canvas)
-- @param width (integer)
-- @param height (integer)
-- Called when the Canvas needs to be painted<br/><br/>You can only call <code>:Draw...()</code> methods from inside this event
Canvas.Update = function(self, width, height) end

