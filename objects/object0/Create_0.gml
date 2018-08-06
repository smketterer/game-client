/// @description Insert description here
// You can write your code in this editor

socket = network_create_socket(network_socket_udp);
buffer = buffer_create(256, buffer_fixed, 1);

test_json_object = ds_map_create();
ds_map_add(test_json_object, "text", "hello world");
test_json = json_encode(test_json_object);

buffer_write(buffer, buffer_u8, 1); // 1, plaintext header.
buffer_write(buffer, buffer_text, test_json);

network_send_udp_raw(socket, "127.0.0.1", 1234, buffer, buffer_tell(buffer));

output = "test message";