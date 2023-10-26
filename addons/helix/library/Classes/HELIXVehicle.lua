-- HELIXVehicle class
-- Vehicles are wheeled entities which Characters can possesses and drive.
HELIXVehicle = {}

-- HELIXVehicle functions
-- @param seat_index (integer) 
-- @param animation_enter (string) 
-- @param animation_leave (string) 
-- Adds a Door animation to the Vehicle
function HELIXVehicle:SetDoorAnimation(seat_index, animation_enter, animation_leave) end

-- @param seat_index (integer) 
-- @param offset_location (Vector) 
-- @param seat_location (Vector) 
-- @param seat_rotation (Rotator) 
-- @param trigger_radius (integer) 
-- @param leave_lateral_offset (integer) It's where the Character will be ejected when leaving it (e.g. -150 for left door or 150 for right door)
-- Adds a Door to the Vehicle
function HELIXVehicle:SetDoor(seat_index, offset_location, seat_location, seat_rotation, trigger_radius, leave_lateral_offset) end

-- @param animation_path (AnimationPath) 
-- @param loop_indefinitely (boolean) This parameter is only used if the Vehicle has an Animation Blueprint
-- @param slot_name (string) 
-- @param blend_in_time (float) This parameter is only used if the Vehicle has an Animation Blueprint
-- @param blend_out_time (float) This parameter is only used if the Vehicle has an Animation Blueprint
-- @param play_rate (float) This parameter is only used if the Vehicle has an Animation Blueprint
-- @param stop_all_montages (boolean) Stops all running Montages from the same Group. This parameter is only used if the Vehicle has an Animation Blueprint
-- Plays an Animation on this Vehicle
function HELIXVehicle:PlayAnimation(animation_path, loop_indefinitely, slot_name, blend_in_time, blend_out_time, play_rate, stop_all_montages) end

-- @param animation_path (AnimationPath) 
-- Stop an Animation on this Vehicle
function HELIXVehicle:StopAnimation(animation_path) end

-- @return VehiclePath asset path
-- Gets the Asset name
function HELIXVehicle:GetMesh() end

-- @param seat (integer) 
-- @return Character or nil if no passenger in seat
-- Gets a passenger from a seat
function HELIXVehicle:GetPassenger(seat) end

-- @return Character[] 
-- Gets all passengers
function HELIXVehicle:GetPassengers() end

-- @return integer 
-- Gets the current RPM
function HELIXVehicle:GetRPM() end

-- @return integer 
-- Gets the current Gear
function HELIXVehicle:GetGear() end

-- @param bone_name (string) 
-- @return table 
-- Gets a Bone Transform in world space given a bone name
function HELIXVehicle:GetBoneTransform(bone_name) end

-- @param offset (Vector) 
-- Sets the Vehicle Camera Offset
function HELIXVehicle:SetCameraOffset(offset) end

-- @return table 
-- Gets all configured Doors
function HELIXVehicle:GetDoors() end

-- @param engine_relative_location (Vector) 
-- @param materials_override (Vector) 
-- @param materials_invisible (Vector) 
-- Set explosion settings.
function HELIXVehicle:SetExplosionSettings(engine_relative_location, materials_override, materials_invisible) end

-- HELIXVehicle events
-- @param self (Vehicle)
-- @param character (Character)
-- @param seat (integer)
-- Triggered when a Character fully enters the Vehicle
HELIXVehicle.CharacterEnter = function(self, character, seat) end

-- @param self (Vehicle)
-- @param character (Character)
-- Triggered when a Character fully leaves the Vehicle
HELIXVehicle.CharacterLeave = function(self, character) end

