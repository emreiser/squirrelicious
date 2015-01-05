class YummlyController < ApplicationController
  def index
    api_id = ENV["YUMMLY_APP_ID"]
    api_key = ENV["YUMMLY_APP_KEY"]
    ingredients = params[:ingredients]
    ingredients.gsub!(' ', '+')

    yummly_url = "http://api.yummly.com/v1/api/recipes?_app_id=#{api_id}&_app_key=#{api_key}&q=#{ingredients}"

    @response = HTTParty.get(yummly_url)

    render json: @response
  end
end
