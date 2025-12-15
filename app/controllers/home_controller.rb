class HomeController < ApplicationController
  def index
    city = params[:city].presence || "Leipzig,de"  # Als Standart ohne Eingabe
    @weather = HTTParty.get(
      "https://api.openweathermap.org/data/2.5/weather",
      query: {
        q:    city,
        lang: "de",
        units: "metric",
        appid: ENV["OPEN_WEATHER_MAP_TOKEN"]
      }
    ).parsed_response
  end
  def about
  end
end