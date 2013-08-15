@root=File.expand_path(File.join(File.dirname(__FILE__),'web'))
run Proc.new { |env|
  req = Rack::Request.new(env)
  index_file=File.join(@root,req.path_info,'index.html')
  Rack::Directory.new(@root).call(env)
}
