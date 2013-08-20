require 'rack'
Rack::Server.start(:app => lambda { |env| [200, {'Content-Type' => 'text/html'}, ['hello rack']] })