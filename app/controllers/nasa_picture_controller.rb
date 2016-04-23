class NasaPictureController < ApplicationController
  def index
  	@nasa_info = NasaApod.get_api_info
  end
end
