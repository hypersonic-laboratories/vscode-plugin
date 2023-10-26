-- StaticMesh class
-- A StaticMesh entity represents a Mesh which can be spawned in the world, can't move and is more optimized for using in decorating the world.
StaticMesh = {}

-- StaticMesh functions
-- @return StaticMeshPath asset
-- Changes the mesh in runtime
function StaticMesh:SetMesh() end

-- @return StaticMeshPath asset path
-- Gets the Asset path mesh used
function StaticMesh:GetMesh() end

-- @return boolean if this StaticMesh is from the level
-- Gets if this StaticMesh is from the Level
function StaticMesh:IsFromLevel() end

-- StaticMesh events
