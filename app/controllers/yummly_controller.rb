class YummlyController < ApplicationController
  def index
    app_id = ENV["EDAMAM_APP_ID"]
    app_key = ENV["EDAMAM_API_KEY"]
    ingredients = params[:ingredients]
    ingredients.gsub!(' ', '+')

    edamam_url = "https://api.edamam.com/search?q=#{ingredients}&app_id=#{app_id}&app_key=#{app_key}"

    @response = HTTParty.get(edamam_url)

    render json: @response
  end
end
