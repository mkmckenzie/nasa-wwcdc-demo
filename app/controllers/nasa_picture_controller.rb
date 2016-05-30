class NasaPictureController < ApplicationController
  def index
  	@nasa_info = NasaApod.get_api_info(params[:date] || Time.now.in_time_zone('US/Eastern').to_date
.to_s)
  	@media_type_is_video = @nasa_info['media_type'].eql?("video")
  end
end
