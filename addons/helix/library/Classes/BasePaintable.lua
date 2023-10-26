-- Paintable class
-- Base class for all Paintable entities. This class provides customization for materials, exposing common functions to allow you to set custom material parameters, including loading textures from disk.
Paintable = {}

-- Paintable functions
-- @param material_path (MaterialPath) The new Material to apply
-- @param index (integer) The index to apply<br/>-1 means all indices
-- Sets the material at the specified index of this Actor
function Paintable:SetMaterial(material_path, index) end

-- @param canvas (Canvas) The Canvas object to use as a materia
-- @param index (integer) The index to apply<br/>-1 means all indices
-- Sets the material at the specified index of this Actor to a Canvas object
function Paintable:SetMaterialFromCanvas(canvas, index) end

-- @param scene_capture (SceneCapture) The SceneCapture object to use as a material
-- @param index (integer) The index to apply<br/>-1 means all indices
-- Sets the material at the specified index of this Actor to a SceneCapture object
function Paintable:SetMaterialFromSceneCapture(scene_capture, index) end

-- @param webui (WebUI) The WebUI object to use as a material
-- @param index (integer) The index to apply<br/>-1 means all indices
-- Sets the material at the specified index of this Actor to a WebUI object
function Paintable:SetMaterialFromWebUI(webui, index) end

-- @param index (integer) The index to apply<br/>-1 means all indices
-- Resets the material from the specified index to the original one
function Paintable:ResetMaterial(index) end

-- @param parameter_name (string) The name of the material parameter
-- @param color (Color) The value to set
-- Sets a Color parameter in this Actor's material
function Paintable:SetMaterialColorParameter(parameter_name, color) end

-- @param parameter_name (string) The name of the material parameter
-- @param scalar (float) The value to set
-- Sets a Scalar parameter in this Actor's material
function Paintable:SetMaterialScalarParameter(parameter_name, scalar) end

-- @param parameter_name (string) The name of the material parameter
-- @param texture_path (ImagePath) The path to the texture
-- Sets a texture parameter in this Actor's material to an image on disk
function Paintable:SetMaterialTextureParameter(parameter_name, texture_path) end

-- @param parameter_name (string) The name of the material parameter
-- @param vector (Vector) The value to set
-- Sets a Vector parameter in this Actor's material
function Paintable:SetMaterialVectorParameter(parameter_name, vector) end

-- @param physical_material_path (MaterialPath) The Physical Material to override
-- Overrides this Actor's Physical Material with a new one
function Paintable:SetPhysicalMaterial(physical_material_path) end

-- Paintable events
