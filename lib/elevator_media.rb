require 'uri'
require 'net/http'
require 'openssl'
require 'rails_helper'

module ElevatorMedia
           
    class Streamer
        
        
        def self.getContent(weatherVal)
            response = ""
            weatherVal = self.weather()

            if weatherVal == nil
                response == "Weather unavailable"
                puts "Weather unavailable !"
                return response
            end  
            if weatherVal != nil
                response == "Weather available"
                puts "Weather available !"
                return response
            end              
        end
        

        def self.weather
            url = URI("https://community-open-weather-map.p.rapidapi.com/weather?q=Quebec%2Cca&lat=0&lon=0&callback=weather&id=2172797&lang=null&units=%22metric%22&mode=html")
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = ENV['OPEN_WEATHER_KEY']
            request["x-rapidapi-host"] = ENV['OPEN_WEATHER_HOST']
            response = http.request(request)
            # puts response.read_body
            return response
        end
    end
end
