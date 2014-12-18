module Compliment
  class Server < Sinatra::Base

    get '/' do
      name = params[:name]
      @greeting = "Hello" + name
      compliments = [
  "People behind you in class think you are the perfect height.",
  "Your instructors think you're young.",
  "Your posture during breaks effectively masks your exhaustion.",
  "Your commit messages are Kafka-esque",
  "Your fingers are magic on the keys"]
      @comp_them = compliments.sample
      render(:erb, :index)
    end

  end
end
