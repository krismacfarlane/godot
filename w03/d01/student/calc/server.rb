# server.rb
require 'pry'

module Calc
  class Server < Sinatra::Base

    get '/' do
      status(200)
      headers({})
      body('<a href="/hello">Do you want to hear a joke?</a>')
    end

    get '/hello' do
      status(200)
      headers({})
      body("I don't know any...sorry")
    end

    get('/:x/times/:y') do
      status(200)
      headers({})
      body("The answer is #{params[:x].to_i * params[:y].to_i}")
    end

  end
end
