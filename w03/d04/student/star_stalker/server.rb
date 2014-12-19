module Starstalk
  class Server < Sinatra::Base

    get '/' do
      render(:erb, :index)
    end

    get '/about' do
      render(:erb, :about)
    end

    get '/stars' do
      render(:erb, :index)
    end


  end
end
