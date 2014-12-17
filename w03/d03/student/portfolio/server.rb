module Portfolio
  class Server < Sinatra::Base

    # route handler
    get '/' do
      status(200)
      headers({"X-Powered-By" => "Sinatra"})
      body("<h1>Good afternoon! It is now #{Time.now}</h1>")
    end

  end
end
