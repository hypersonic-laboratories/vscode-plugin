-- HTTP static class
-- HTTP Requests Interface.
HTTP = {}

-- @param uri (string) The main URI
-- @param endpoint (string) The endpoint
-- @param method (string) The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods'>HTTP Method</a> to be used
-- @param data (string) Payload
-- @param content_type (string) The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types'>Content Type</a> to be used
-- @param compress (boolean) Whether or not to compress the content with gzip
-- @param headers (table) The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers'>Headers</a> to be used
-- @param callback (function) The result will be called in the format `function(status, data)`
-- Makes an asynchronous HTTP Request
function HTTP:RequestAsync(uri, endpoint, method, data, content_type, compress, headers, callback) end

-- @param uri (string) The main URI
-- @param endpoint (string) The endpoint
-- @param method (string) The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods'>HTTP Method</a> to be used
-- @param data (string) Payload
-- @param content_type (string) The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types/Common_types'>Content Type</a> to be used
-- @param compress (boolean) Whether or not to compress the content with gzip
-- @param headers (table) The <a href='https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers'>Headers</a> to be used
-- @return table 
-- Makes a synchronous HTTP Request.<br/><br/>The request will be made synchronously and will freeze the server until it's done.
function HTTP:Request(uri, endpoint, method, data, content_type, compress, headers) end

-- @param connection_timeout (integer) The timeout in seconds
-- Sets the global Connection Timeout in seconds
function HTTP:SetConnectionTimeout(connection_timeout) end

-- @param read_write_timeout (integer) The timeout in seconds
-- Sets the global Read and Write Timeout in seconds
function HTTP:SetReadWriteTimeout(read_write_timeout) end

