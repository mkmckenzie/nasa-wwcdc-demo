class NasaApod < ActiveRecord::Base
	def self.get_api_info(set_date)
		nasa_api = "https://api.nasa.gov/planetary/apod?api_key=#{ENV['NASA_API_KEY']}&date=#{set_date}"
		Rails.logger.debug("fetching set_date: #{set_date}")
		request_to_nasa_api = Net::HTTP.get(URI(nasa_api))
		JSON.parse request_to_nasa_api
		Rails.logger.debug("#{JSON.parse request_to_nasa_api}")
	end
end
