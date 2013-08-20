require 'rack'
app = Rack::Builder.new do
  map "/" do
    run lambda { |env| puts env; [200, {"Content-Type" => "text/plain"}, ["Hello Rack!"]] }
  end
end.to_app

server = Rack::Server.new.server
server.run(app)