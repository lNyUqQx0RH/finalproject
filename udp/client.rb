require 'socket'
require 'json'

sock = UDPSocket.new
# data = 'exit'
data = Hash.new
data['type'] = 'purchase'
data['userid'] = 'a5'
data['itemid'] = 'tv1'

sock.send(data.to_json, 0, '127.0.0.1', 33333)
sock.close