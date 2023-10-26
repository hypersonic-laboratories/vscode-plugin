-- Vehicle class
-- Vehicles are wheeled entities which Characters can possesses and drive.
Vehicle = {}

-- Vehicle functions
-- @param id (string) Used further for removing or applying material settings on it
-- @param static_mesh_asset (StaticMeshPath) 
-- @param socket (string) 
-- @param relative_location (Vector) 
-- @param relative_rotation (Rotator) 
-- Spawns and Attaches a StaticMesh into this Vehicle
function Vehicle:AddStaticMeshAttached(id, static_mesh_asset, socket, relative_location, relative_rotation) end

-- @param enable_horn (boolean) 
-- Starts or stops the vehicles horn
function Vehicle:Horn(enable_horn) end


-- Recreate the Vehicle Physics
function Vehicle:RecreatePhysics() end

-- @param id (string) 
-- Removes, if existing, a StaticMesh from this Vehicle given it's custom ID
function Vehicle:RemoveStaticMeshAttached(id) end


-- Removes all StaticMeshes attached
function Vehicle:RemoveAllStaticMeshesAttached() end

-- @param offset (Vector) 
-- Sets the Vehicle Camera Offset
function Vehicle:SetCameraOffset(offset) end

-- @param auto_start (boolean) 
-- Sets if the Engine auto starts when the driver enters the Vehicle
function Vehicle:SetAutoStartEngine(auto_start) end

-- @param started (boolean) 
-- Sets if the Engine is turned off/on
function Vehicle:SetEngineStarted(started) end

-- @param steering_type (SteeringType) 
-- @param angle_ratio (float) Only applies when AngleRatio is selected
-- Configures the Vehicle Steering
function Vehicle:SetSteeringSetup(steering_type, angle_ratio) end

-- @param max_torque (integer) Max Engine Torque (Nm) is multiplied by TorqueCurve
-- @param max_rpm (integer) Maximum revolutions per minute of the engine
-- @param idle_rpm (integer) Idle RMP of engine then in neutral/stationary
-- @param brake_effect (float) Braking effect from engine, when throttle released
-- @param rev_up_moi (integer) Affects how fast the engine RPM speed up
-- @param rev_down_rate (integer) Affects how fast the engine RPM slows down
-- Configures the Vehicle Engine (Torque, RPM, Braking)
function Vehicle:SetEngineSetup(max_torque, max_rpm, idle_rpm, brake_effect, rev_up_moi, rev_down_rate) end

-- @param mass (integer) Mass of the vehicle chassis
-- @param drag_coefficient (float) Force resisting forward motion at speed
-- @param vehicle_chassis_width (integer) Chassis width used for drag force computation (cm)
-- @param vehicle_chassis_height (integer) Chassis height used for drag force computation (cm)
-- @param vehicle_downforce_coefficient (float) Force pressing vehicle into ground at speed
-- @param center_of_mass_override (Vector) Overrides the center of mass. Good for curves stabilization. Ideally the Z should be the same as the wheels radius
-- Configures the Vehicle Aerodynamics Settings
function Vehicle:SetAerodynamicsSetup(mass, drag_coefficient, vehicle_chassis_width, vehicle_chassis_height, vehicle_downforce_coefficient, center_of_mass_override) end

-- @param transmission_final_ratio (float) The final gear ratio multiplies the transmission gear ratios
-- @param transmission_change_up_rpm (integer) Engine Revs at which gear up change ocurrs
-- @param transmission_change_down_rpm (integer) Engine Revs at which gear down change ocurrs
-- @param transmission_gear_change_time (float) Time it takes to switch gears (seconds)
-- @param transmission_efficiency (float) Mechanical frictional losses mean transmission might operate at 0.94 (94% efficiency)
-- Configures the Vehicle Transmission
function Vehicle:SetTransmissionSetup(transmission_final_ratio, transmission_change_up_rpm, transmission_change_down_rpm, transmission_gear_change_time, transmission_efficiency) end

-- @param index (integer) Index of the wheel (0-N). Set it in ASC order
-- @param bone_name (string) Name of the bone to attach this wheel to
-- @param radius (integer) Radius of the wheel
-- @param width (integer) Width of the wheel
-- @param max_steer_angle (integer) Steer angle in degrees for this wheel
-- @param offset (Vector) If bone_name is specified, offset the wheel from the bone's location. Otherwise this offsets the wheel from the vehicle's origin
-- @param is_affected_by_engine (boolean) Whether engine should power this wheel
-- @param is_affected_by_brake (boolean) Whether brake should affect this wheel
-- @param is_affected_by_handbrake (boolean) Whether handbrake should affect this wheel
-- @param has_abs_enabled (boolean) Advanced Braking System Enabled
-- @param has_traction_control_enabled (boolean) Straight Line Traction Control Enabled
-- @param max_brake_torque (integer) Max brake torque for this wheel (Nm)
-- @param max_handbrake_torque (integer) Max handbrake brake torque for this wheel (Nm). A handbrake should have a stronger brake torque than the brake
-- @param cornering_stiffness (integer) Tyre Cornering Ability
-- @param side_slip_modifier (float) Wheel Lateral Skid Grip Loss, lower number less grip on skid
-- @param friction_force_multiplier (float) Friction Force Multiplier
-- @param slip_threshold (float) Wheel Longitudinal Slip Threshold
-- @param skid_threshold (float) Wheel Lateral Skid Threshold
-- @param suspension_spring_rate (float) Spring Force (N/m)
-- @param suspension_spring_preload (float) Spring Preload (N/m)
-- @param suspension_max_raise (float) How far the wheel can go above the resting position
-- @param suspension_max_drop (float) How far the wheel can drop below the resting position
-- @param suspension_smoothing (float) Smooth suspension [0-off, 10-max] - Warning might cause momentary visual inter-penetration of the wheel against objects/terrain
-- @param suspension_damping_ratio (float) Suspension damping, larger value causes the suspension to come to rest faster [range 0 to 1]
-- @param suspension_wheel_load_ratio (float) Amount wheel load effects wheel friction. <br/> - At 0 wheel friction is completely independent of the loading on the wheel (This is artificial as it always assumes even balance between all wheels) <br/> - At 1 wheel friction is based on the force pressing wheel into the ground. This is more realistic. <br/> - Lower value cures lift off over-steer, generally makes vehicle easier to handle under extreme motions.
-- @param suspension_axis (Vector) Local body direction in which where suspension forces are applied (typically along -Z-axis)
-- @param suspension_force_offset (Vector) Vertical offset from where suspension forces are applied (along Z-axis)
-- Configures a Vehicle Wheel
function Vehicle:SetWheel(index, bone_name, radius, width, max_steer_angle, offset, is_affected_by_engine, is_affected_by_brake, is_affected_by_handbrake, has_abs_enabled, has_traction_control_enabled, max_brake_torque, max_handbrake_torque, cornering_stiffness, side_slip_modifier, friction_force_multiplier, slip_threshold, skid_threshold, suspension_spring_rate, suspension_spring_preload, suspension_max_raise, suspension_max_drop, suspension_smoothing, suspension_damping_ratio, suspension_wheel_load_ratio, suspension_axis, suspension_force_offset) end

-- @param seat_index (integer) 
-- @param offset_location (Vector) 
-- @param seat_location (Vector) 
-- @param seat_rotation (Rotator) 
-- @param trigger_radius (integer) 
-- @param leave_lateral_offset (integer) It's where the Character will be ejected when leaving it (e.g. -150 for left door or 150 for right door)
-- Adds a Door to the Vehicle
function Vehicle:SetDoor(seat_index, offset_location, seat_location, seat_rotation, trigger_radius, leave_lateral_offset) end

-- @param location (Vector) 
-- @param radius (integer) 
-- Configures where the Steering Wheel is located
function Vehicle:SetSteeringWheelSetup(location, radius) end

-- @param location (Vector) 
-- @param color (Color) 
-- Configures the Headlights Offset and Color.
function Vehicle:SetHeadlightsSetup(location, color) end

-- @param location (Vector) 
-- Configures the Taillights Offset.
function Vehicle:SetTaillightsSetup(location) end

-- @param animation_path (AnimationPath) 
-- @param slot_name (string) 
-- @param loop_indefinitely (boolean) This parameter is only used if the Vehicle has an Animation Blueprint
-- @param blend_in_time (float) This parameter is only used if the Vehicle has an Animation Blueprint
-- @param blend_out_time (float) This parameter is only used if the Vehicle has an Animation Blueprint
-- @param play_rate (float) This parameter is only used if the Vehicle has an Animation Blueprint
-- @param stop_all_montages (boolean) Stops all running Montages from the same Group. This parameter is only used if the Vehicle has an Animation Blueprint
-- Plays an Animation on this Vehicle
function Vehicle:PlayAnimation(animation_path, slot_name, loop_indefinitely, blend_in_time, blend_out_time, play_rate, stop_all_montages) end

-- @return VehiclePath asset path
-- Gets the Asset name
function Vehicle:GetMesh() end

-- @return table 
-- Gets all configured Doors
function Vehicle:GetDoors() end

-- @param bone_name (string) 
-- @return table 
-- Gets a Bone Transform in world space given a bone name
function Vehicle:GetBoneTransform(bone_name) end

-- @param seat (integer) 
-- @return Character or nil if no passenger in seat
-- Gets a passenger from a seat
function Vehicle:GetPassenger(seat) end

-- @return Character[] 
-- Gets all passengers
function Vehicle:GetPassengers() end

-- @return integer 
-- Gets the current RPM
function Vehicle:GetRPM() end

-- @return integer 
-- Gets the current Gear
function Vehicle:GetGear() end

-- Vehicle events
-- @param self (Vehicle)
-- @param is_honking (boolean)
-- Triggered when Vehicle honks
Vehicle.Horn = function(self, is_honking) end

-- @param self (Vehicle)
-- @param impact_force (integer)
-- @param normal_impulse (Vector)
-- @param impact_location (Vector)
-- @param velocity (Vector)
-- Triggered when Vehicle hits something
Vehicle.Hit = function(self, impact_force, normal_impulse, impact_location, velocity) end

-- @param self (Vehicle)
-- @param character (Character)
-- @param seat (integer)
-- Triggered when a Character fully enters the Vehicle
Vehicle.CharacterEnter = function(self, character, seat) end

-- @param self (Vehicle)
-- @param character (Character)
-- Triggered when a Character fully leaves the Vehicle
Vehicle.CharacterLeave = function(self, character) end

-- @param self (Vehicle)
-- @param character (Character)
-- @param seat (integer)
-- Triggered when a Character attempts to enter the Vehicle
Vehicle.CharacterAttemptEnter = function(self, character, seat) end

-- @param self (Vehicle)
-- @param character (Character)
-- Triggered when a Character attempts to leave the Vehicle
Vehicle.CharacterAttemptLeave = function(self, character) end

-- @param self (Vehicle)
-- @param damage (integer)
-- @param bone (string)
-- @param type (DamageType)
-- @param from_direction (Vector)
-- @param instigator (Player)
-- @param causer (any)
-- Triggered when this Vehicle takes damage
Vehicle.TakeDamage = function(self, damage, bone, type, from_direction, instigator, causer) end

