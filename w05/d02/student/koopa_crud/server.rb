module KoopaCrud
  class Server < Sinatra::Base

    use Rack::MethodOverride

    configure :development do
      register Sinatra::Reloader
      $redis = Redis.new
    end

    get('/') do
      render(:erb, :index)
    end

    get('/koopas') do
      keys = $redis.keys("koopas:*")
      @koopas = keys.map do |key|
      $redis.hgetall(key)
      end
      render(:erb, :koopas)
    end

    get('/koopas/new') do
      render(:erb, :new)
    end

    post('/koopas') do
      id = $redis.incr("koopa_id")
      name = params["name"]
      color = params["color"]
      photo_url = params["photo_url"]
      has_shell = params["has_shell"]
      $redis.hmset("koopa#{id}", "name", name, "color", color, "photo_url", photo_url, "has_shell", has_shell)
      $redis.lpush("koopas", id)
      redirect to("/koopas")
    end

    get('/koopas/:id') do
      id = params[:id].downcase
      @koopa = $redis.hgetall("koopas:#{id}")
      render(:erb, :koopa)
    end

  end
end
