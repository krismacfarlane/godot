module Portfolio
  class Server < Sinatra::Base

    # route handler
    get '/' do
      # helper method to set status and location in  headers
      status(302)
      redirect to ('/index')
    end

    get '/index' do
      render(:erb, :index, {:layout => :default_layout})
    end
    # route handler
    get '/about' do
      render(:erb, :about, {:layout => :default_layout})
    end

    get '/lunch' do
      render(:erb, :lunch, {:layout => :default_layout})
    end

  end
end


# each route handler is a separate instance
