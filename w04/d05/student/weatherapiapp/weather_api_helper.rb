require 'pry'
require 'httparty'

module WeatherApiHelper

    def temperature(location)
      state = location.split(", ")[1]
      city = location.split(", ")[0].gsub(" ","_")
      weather_link = "http://api.wunderground.com/api/d08fc37bf3f9a47f/conditions/q/#{state}/#{city}.json"
      response = HTTParty.get(weather_link)
      temp_in_f = response["current_observation"]["temp_f"]
      "THE CURRENT TEMPERATURE IN #{city.gsub("_"," ").upcase} IS: #{temp_in_f} F."
    end

end

include WeatherApiHelper
binding.pry
