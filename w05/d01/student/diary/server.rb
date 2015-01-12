require 'redis'

module Diary
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      @persons_secrets = Redis.new
    end

    get('/') do
      render(:erb, :index, { :layout => :default_layout })
    end

    get('/signup') do
      render(:erb, :signup, { :layout => :default_layout })
    end

    get('/login') do
      redirect to(params[:name])
    end

    get '/:username' do
      @name = params[:username]
      @secrets = @persons_secrets.lrange @name, 0, -1
      render(:erb, :user, { :layout => :default_layout })
    end

  end
end
