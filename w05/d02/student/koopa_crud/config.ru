require 'sinatra/base'
require 'sinatra/reloader'
require 'redis'
require 'pry'

require_relative 'server'

run KoopaCrud::Server
