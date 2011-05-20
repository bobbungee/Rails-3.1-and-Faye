require 'uri'
require 'socket'

# Ideally this would go elsewhere, but it's only used for Faye
def local_ip
  UDPSocket.open {|s| s.connect('64.233.187.99', 1); s.addr.last }
end

FAYE_TOKEN = "some-string"
FAYE_URI = URI.parse("http://#{local_ip}:9292/faye")
