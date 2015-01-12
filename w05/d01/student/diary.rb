require 'redis'
require 'pry'



  class Diary

    def initialize
      @persons_secrets = Redis.new
    end

    def tell_secret(person, secret)
      @persons_secrets.lpush person, secret
    end

    def get_secrets(person)
      @persons_secrets.lrange person, 0, -1
    end

  end


