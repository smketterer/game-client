/// @description Read any incoming data.

// The following keys are common to all received network
// functions and will always be present in the async_load map:
// "type": This will have one of the constants listed below as
// its return value, and designates the network event type.
// 
// "id": The socket id (a real number, as returned by the
// network_create_server or network_create_socket function)
// that is receiving the event. In most cases the socket ID
// returned is the ID of TCP or UDP socket that triggered the
// event, however if the event is triggered in a server and
// it's a Data Event (see below) then the socket ID is that of
// the client that sent the data.
// 
// "ip": The IP address of the socket (as a string).
// 
// "port": The port associated with the IP address (useful when
// working with UDP).

response = async_load;
response_buffer = ds_map_find_value(async_load,"buffer");

output = buffer_read(response_buffer, buffer_text);