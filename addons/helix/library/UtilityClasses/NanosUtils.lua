-- HELIXUtils static class
-- A table containing useful and aux functions.
HELIXUtils = {}

-- @param entity (any) Entity to verify
-- @return boolean if the entity is valid
-- Returns if an entity is valid
function HELIXUtils:IsEntityValid(entity) end

-- @param name (string) Benchmark name to output
-- @param amount (number) Amount of times to loop
-- @param func (function) The function to call
-- @param args... (any) The arguments of the function to call
-- Benchmarks a function performance
function HELIXUtils:Benchmark(name, amount, func, args...) end

