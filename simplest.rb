require 'rack'
Rack::Server.new.server.run lambda { |env| [200, {'Content-type' => "text/plain"}, ["Hello Rack!"]] }