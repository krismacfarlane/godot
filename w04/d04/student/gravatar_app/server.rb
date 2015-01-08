module GravatarApp
  class Server < Sinatra::Base

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    end

    get('/') do
      render(:erb, :index, {:layout => :default})
    end

    get('/students') do
      emails = $redis.lrange('wdi:students', 0, -1)
      @students = emails.map do |email|
        Digest::MD5.hexdigest(email)
      end
      render(:erb, :students, {:layout => :default})
    end

    get('/students/:email_hash') do
      email = params[:email_hash]
      profile_url = "http://www.gravatar.com/#{email}.json"
      response = HTTParty.get(profile_url)
      name = response["entry"][0]["name"]

      if name.any?
        @name = name["formatted"]
      else
        @name = "Nameless"
      end

      @location = response["entry"][0]["currentLocation"]
      @pic = response["entry"][0]["photos"][0]["value"]
      render(:erb, :profile, {:layout => :default})
      # binding.pry
    end

  end # Server
end # GravatarApp
