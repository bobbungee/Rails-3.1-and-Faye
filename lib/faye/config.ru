require 'faye'
require './settings'

faye_server = Faye::RackAdapter.new(:mount => FAYE_URI.path, :timeout => 45)
run faye_server
