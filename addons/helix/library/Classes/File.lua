-- File class
-- A File represents an entry to a system file.
File = {}

-- File functions

-- Closes the file and destroys the entity
function File:Close() end


-- Flushes content to the file
function File:Flush() end

-- @return boolean if is EOF
-- Checks if the file status is End of File
function File:IsEOF() end

-- @return boolean if status is Bad
-- Checks if the file status is Bad
function File:IsBad() end

-- @return boolean if status is Good
-- Checks if the file status is Good
function File:IsGood() end

-- @return boolean if last operation failed
-- Checks if the last operation has Failed
function File:HasFailed() end

-- @param length (integer) Length to be read from file
-- @return string file data
-- Reads characters from the File and returns it. Also moves the file pointer to the latest read position. Pass 0 to read the whole file
function File:Read(length) end

-- @param length (integer) Length to be read from file
-- @param callback (function) Callback
-- Reads characters from the File asynchronously.
function File:ReadAsync(length, callback) end

-- @return string file line data
-- Reads and returns the next file line
function File:ReadLine() end

-- @return table parsed table
-- Reads the whole file as a JSON and returns it.
function File:ReadJSON() end

-- @param callback (function) Callback with the file read
-- Reads the whole file as a JSON and returns it asynchronously.
function File:ReadJSONAsync(callback) end

-- @param position (integer) Position to offset the file pointer
-- Sets the file pointer to a specific position
function File:Seek(position) end

-- @return integer file size
-- Returns the size of the file
function File:Size() end

-- @param amount (integer) Amount to offset the file pointer
-- Skips n (amount) positions from the current file pointer position
function File:Skip(amount) end

-- @return integer current file pointer position
-- Returns the current file pointer position
function File:Tell() end

-- @param data (string) Data to write to the file
-- Writes the Data at the current position of the file
function File:Write(data) end

-- File events
