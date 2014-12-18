require 'date'

module Holidays
  class Server < Sinatra::Base

    get '/' do
      points = params[:level].to_i
      exclaim = "!" * points
      # "<h1> HAPPY HOLIDAYS#{exclaim}</h1>"
      @greeting  = "Happy holidays" + exclaim
      render(:erb, :index)
    end

    get '/date' do
      @date = Date.today
      render(:erb, :date)
    end

  end
end
