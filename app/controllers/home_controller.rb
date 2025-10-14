class HomeController < ApplicationController
  require 'httparty'

  def index

    @weather = HTTParty.get(
      "https://api.openweathermap.org/data/2.5/weather",
      query: {
        zip: "04317,de",
        lang: "de",
        units: "metric",
        appid: ENV["OPEN_WEATHER_MAP_TOKEN"]
      }
    ).parsed_response
  end

  def about
  end
end