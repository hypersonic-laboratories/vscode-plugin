-- Payment static class
-- Charge LIX from other players.
Payment = {}

-- @param player (Player) Player charged
-- @param amount (integer) Amount of LIX being charged
-- @param to_id (string) ID of the player who will receive the LIX
-- @param charge_title (string) Title of charge
-- @param charge_description (string) Description of charge
-- @param callback (function) Charge creation callback in the format (success, charge_id)
-- Charges an amount of LIX from a player
function Payment:ChargePlayer(player, amount, to_id, charge_title, charge_description, callback) end

-- @param player (Player) Player being charged
-- @param item_id (string) ID of the item being sold
-- @param amount (integer) How many items
-- @param charge_title (string) Title of charge
-- @param charge_description (string) Description of charge
-- @param callback (function) Charge creation callback in the format (success, charge_id)
-- Sells an item to a player
function Payment:SellItemToPlayer(player, item_id, amount, charge_title, charge_description, callback) end

