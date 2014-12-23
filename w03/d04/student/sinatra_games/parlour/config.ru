require 'sinatra/base'

require_relative './coin.rb'
require_relative './dice.rb'
require_relative './server.rb'

run Parlour::Server
