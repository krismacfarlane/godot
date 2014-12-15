require 'rack'

app = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, ['<h1>Cats are the best!</h1>']]
end

Rack::Handler::WEBrick.run app
