-- Player class
-- Players are Entities that represents the individual behind the mouse and keyboard. Players are spawned automatically when connected to the server.
Player = {}

-- Player functions
-- @param reason (string) 
-- Bans the player from the server
function Player:Ban(reason) end

-- @param IP (string) 
-- @param password (string) Server password
-- Redirects the player to another server
function Player:Connect(IP, password) end

-- @param reason (string) 
-- Kicks the player from the server
function Player:Kick(reason) end

-- @param new_character (Character) 
-- @param blend_time (float) 
-- @param exp (float) 
-- Makes a Player to possess and control a Character
function Player:Possess(new_character, blend_time, exp) end

-- @param from_alpha (float) Alpha at which to begin the fade. Range [0..1], where 0 is fully transparent and 1 is fully opaque solid color.
-- @param to_alpha (float) Alpha at which to finish the fade.
-- @param duration (float) How long the fade should take, in seconds.
-- @param to_color (Color) Color to fade to/from.
-- @param should_fade_audio (boolean) True to fade audio volume along with the alpha of the solid color.
-- @param hold_when_finished (boolean) True for fade to hold at the ToAlpha until explicitly stopped (e.g. with StopCameraFade)
-- Does a camera fade to/from a solid color
function Player:StartCameraFade(from_alpha, to_alpha, duration, to_color, should_fade_audio, hold_when_finished) end

-- @param in_fade_amount (float) Range [0..1], where 0 is fully transparent and 1 is fully opaque solid color.
-- @param color (Color) 
-- @param in_fade_audio (boolean) 
-- Turns on camera fading at the given opacity
function Player:SetManualCameraFade(in_fade_amount, color, in_fade_audio) end


-- Stops camera fading.
function Player:StopCameraFade() end

-- @param location (Vector) 
-- Sets the Player's Camera Location (only works if not possessing any Character)
function Player:SetCameraLocation(location) end

-- @param rotation (Rotator) 
-- Sets the Player's Camera Rotation
function Player:SetCameraRotation(rotation) end

-- @param location (Vector) 
-- @param time (float) 
-- @param exp (float) Exponential used to smooth interp, use 0 for linear movement
-- Smoothly moves the Player's Camera Location (only works if not possessing any Character)
function Player:TranslateCameraTo(location, time, exp) end

-- @param rotation (Rotator) 
-- @param time (float) 
-- @param exp (float) Exponential used to smooth interp, use 0 for linear movement
-- Smoothly moves the Player's Camera Rotation
function Player:RotateCameraTo(rotation, time, exp) end

-- @param socket_offset (Vector) 
-- Sets the Player's Camera Socket Offset (Spring Arm Offset)
function Player:SetCameraSocketOffset(socket_offset) end

-- @param length (float) 
-- @param force (boolean) Whether to bypass interpolation and set the target to its value directly
-- Sets the Player's Camera Arm Length (Spring Arm length)
function Player:SetCameraArmLength(length, force) end

-- @param actor (Actor) 
-- @param socket_offset (Vector) 
-- @param blend_speed (float) 
-- Attaches the Player`s Camera to an Actor
function Player:AttachCameraTo(actor, socket_offset, blend_speed) end


-- Resets the Camera to default state (Unspectate and Detaches)
function Player:ResetCamera() end

-- @param player (Player) 
-- @param blend_speed (float) 
-- Spectates other Player
function Player:Spectate(player, blend_speed) end

-- @param new_name (string) 
-- Sets the player's name
function Player:SetName(new_name) end

-- @param channel (integer) 
-- Sets the VOIP Channel of this Player (will only communicate with other players in the same channel)
function Player:SetVOIPChannel(channel) end

-- @param setting (VOIPSetting) 
-- Sets the VOIP Settings of this Player
function Player:SetVOIPSetting(setting) end

-- @param volume (float) 
-- Sets the VOIP Volume of this Player
function Player:SetVOIPVolume(volume) end


-- Release the Player from the Character
function Player:UnPossess() end

-- @return string 
-- 
function Player:GetAccountID() end

-- @return string 
-- 
function Player:GetAccountName() end

-- @return string 
-- Return a URL which can be used through WebUI and Widgets to display the Player's Steam Avatar (64x64)
function Player:GetAccountIconURL() end

-- @return Vector 
-- 
function Player:GetCameraLocation() end

-- @param return_base (boolean) Whether to return the current (false) or base (true) value. The base is the same value set by SetCameraArmLength().
-- @return float 
-- 
function Player:GetCameraArmLength(return_base) end

-- @return Rotator 
-- 
function Player:GetCameraRotation() end

-- @return Character? 
-- 
function Player:GetControlledCharacter() end

-- @return string 
-- 
function Player:GetIP() end

-- @return integer 
-- Gets this Player's dimension
function Player:GetDimension() end

-- @return string 
-- 
function Player:GetName() end

-- @return integer 
-- 
function Player:GetPing() end

-- @return integer 
-- 
function Player:GetVOIPChannel() end

-- @param key (string) 
-- @param fallback (any) 
-- @return any 
-- 
function Player:GetValue(key, fallback) end

-- @return boolean 
-- 
function Player:IsHost() end

-- @return boolean 
-- 
function Player:IsLocalPlayer() end

-- @return VOIPSetting 
-- 
function Player:GetVOIPSetting() end

-- Player events
-- @param self (Player)
-- @param old_dimension (integer)
-- @param new_dimension (integer)
-- Triggered when a Player changes it's dimension
Player.DimensionChange = function(self, old_dimension, new_dimension) end

-- @param self (Player)
-- @param character (Character)
-- Trigerred when Player starts controlling a Character
Player.Possess = function(self, character) end

-- @param self (Player)
-- Triggered when Player is ready (the client fully joined, loaded the map and all entities and is ready to play)
Player.Ready = function(self) end

-- @param self (Player)
-- @param character (Character)
-- A Character was released from the Player
Player.UnPossess = function(self, character) end

-- @param self (Player)
-- @param is_talking (boolean)
-- When a Player starts/ends using VOIP
Player.VOIP = function(self, is_talking) end

