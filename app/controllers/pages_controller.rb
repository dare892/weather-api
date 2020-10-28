class PagesController < ApplicationController

  def index
    if !current_user
      redirect_to new_user_session_path
    end
  end

  def check_weather
    @result = JSON.parse(fetch_info)
  end

  def weather
    api_key = ApiKey.find_by(token: params[:api_key])
    if !api_key || api_key.expiration < DateTime.now
      render json: { error: 'Please Provide a correct api key.' }
    else
      if params[:city] == 'CITY_NAME' || params[:city].blank?
        render json: { error: 'Please Provide a city name.' }
      else
        begin
          result = fetch_info
          api_key.increment!(:used)
          render json: result
        rescue => ex
          render json: { error: ex }
        end
      end
    end
  end

  def fetch_info
    city = params[:city]
    url = URI.parse("http://api.openweathermap.org/data/2.5/weather?q=#{params[:city]}&APPID=9819c37043ce8b4b47041ca47c2ee388")
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    res.body
  end
end
