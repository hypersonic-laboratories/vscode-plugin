-- Assets static class
-- Retrieve Assets Data from Asset Packs.
Assets = {}

-- @return table[] 
-- Gets a list containing information about all loaded Asset Packs
function Assets:GetAssetPacks() end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Animation Assets Keys from an AssetPack
function Assets:GetAnimations(asset_pack_path) end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Blueprints Assets Keys from an AssetPack
function Assets:GetBlueprints(asset_pack_path) end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Map Asset Keys from an AssetPack
function Assets:GetMaps(asset_pack_path) end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Materials Asset Keys from an AssetPack
function Assets:GetMaterials(asset_pack_path) end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Particle Assets Keys from an AssetPack
function Assets:GetParticles(asset_pack_path) end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Sound Assets Keys from an AssetPack
function Assets:GetSounds(asset_pack_path) end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Skeletal Mesh Asset Keys from an AssetPack
function Assets:GetSkeletalMeshes(asset_pack_path) end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Static Mesh Assets Keys from an AssetPack
function Assets:GetStaticMeshes(asset_pack_path) end

-- @param asset_pack_path (string) The Asset Pack path to get the assets
-- @return string[] array of strings
-- Gets a list containing all Other Assets Keys from an AssetPack
function Assets:GetOthers(asset_pack_path) end

-- @param asset_path (string) The Asset Key
-- @param asset_type (AssetType) The Asset Type
-- Manually adds an Asset to be loaded during the Player's loading screen
function Assets:Precache(asset_path, asset_type) end

