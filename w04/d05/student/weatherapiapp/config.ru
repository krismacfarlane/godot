require 'json'
require 'redis'
require 'httparty'
require 'pry'
require 'sinatra/base'
require 'sinatra/reloader'

require_relative 'weather_api_helper'
require_relative 'server'

run WeatherApiHelper::Server
