-- Pickable class
-- <b>Pickables</b> are special Actors which can be <b>grabbed</b>, <b>held</b> and <b>used</b> by Characters.
Pickable = {}

-- Pickable functions
-- @param id (string) Unique ID to assign to the SkeletalMesh
-- @param skeletal_mesh_path (SkeletalMeshPath) Path to SkeletalMesh asset to attach
-- Attaches a Skeletal Mesh as master pose to this entity
function Pickable:AddSkeletalMeshAttached(id, skeletal_mesh_path) end

-- @param id (string) Unique ID to assign to the StaticMesh
-- @param static_mesh_path (StaticMeshPath) Path to StaticMesh asset to attach
-- @param socket (string) Bone socket to attach to
-- @param relative_location (Vector) Relative location
-- @param relative_rotation (Rotator) Relative rotation
-- Attaches a Static Mesh to this entity
function Pickable:AddStaticMeshAttached(id, static_mesh_path, socket, relative_location, relative_rotation) end

-- @param release_use_after (float) Time in seconds to automatically release the usage (-1 will not release, 0 will release one tick after)
-- Pulls the usage of this Pickable (will start firing if this is a weapon)
function Pickable:PullUse(release_use_after) end


-- Releases the usage of this Pickable (will stop firing if this is a weapon)
function Pickable:ReleaseUse() end

-- @param id (string) Unique ID of the SkeletalMesh to remove
-- Removes, if it exists, a SkeletalMesh from this Pickable given its custom ID
function Pickable:RemoveSkeletalMeshAttached(id) end

-- @param id (string) Unique ID of the StaticMesh to remove
-- Removes, if it exists, a StaticMesh from this Pickable given its custom ID
function Pickable:RemoveStaticMeshAttached(id) end

-- @param relative_location (Vector) Location relative to the Socket
-- @param relative_rotation (Rotator) Rotation relative to the Socket
-- @param socket (string) Character Socket to attach to when picked up
-- Sets the Attachment Settings for this Pickable (how it attaches to the Character when Picking up)
function Pickable:SetAttachmentSettings(relative_location, relative_rotation, socket) end

-- @param material_asset (MaterialPath) Asset path to the crosshair material
-- Sets the crosshair material for this Pickable
function Pickable:SetCrosshairMaterial(material_asset) end

-- @param is_pickable (boolean) 
-- Sets if this Pickable can be picked up from ground by the player
function Pickable:SetPickable(is_pickable) end

-- @return SkeletalMeshPath 
-- Gets the name of the asset this Pickable uses
function Pickable:GetMesh() end

-- @return Character? 
-- Gets the Character, if it exists, that's holding this Pickable
function Pickable:GetHandler() end

-- Pickable events
-- @param self (Pickable)
-- @param character (Character)
-- @param was_triggered_by_player (boolean)
-- When a Character drops this Pickable
Pickable.Drop = function(self, character, was_triggered_by_player) end

-- @param self (Pickable)
-- @param impact_force (float)
-- @param normal_impulse (Vector)
-- @param impact_location (Vector)
-- @param velocity (Vector)
-- When this Pickable hits something
Pickable.Hit = function(self, impact_force, normal_impulse, impact_location, velocity) end

-- @param self (Pickable)
-- @param character (Character)
-- Triggered when a Character interacts with this Pickable (i.e. tries to pick it up)
Pickable.Interact = function(self, character) end

-- @param self (Pickable)
-- @param character (Character)
-- Triggered When a Character picks this up
Pickable.PickUp = function(self, character) end

-- @param self (Pickable)
-- @param character (Character)
-- Triggered when a Character presses the use button for this Pickable (i.e. clicks left mouse button with this equipped)
Pickable.PullUse = function(self, character) end

-- @param self (Pickable)
-- @param character (Character)
-- Triggered when a Character releases the use button for this Pickable (i.e. releases left mouse button with this equipped)
Pickable.ReleaseUse = function(self, character) end

