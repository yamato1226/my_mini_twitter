require 'rubygems'
require 'webrick'


server = WEBrick::HTTPServer.new(:Port => 3000)

server.mount_proc '/' do |req, res|
  res.body = 'Hello, this is your review site!'
end

trap('INT') { server.shutdown }

server.start
