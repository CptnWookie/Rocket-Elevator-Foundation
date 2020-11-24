require 'uri'
require 'net/http'
require 'openssl'
require 'rails_helper'

module ElevatorMedia
           
    class Streamer
        
        
        def getContent
            
            
            def weather
                url = URI("https://community-open-weather-map.p.rapidapi.com/weather?q=Quebec%20City%2Cca&lat=46.8428435&lon=-71.2818835&callback=test&id=2172797&lang=en&units=%22metric%22&mode=html")
                http = Net::HTTP.new(url.host, url.port)
                http.use_ssl = true
                http.verify_mode = OpenSSL::SSL::VERIFY_NONE
                request = Net::HTTP::Get.new(url)
                request["x-rapidapi-key"] = ENV['OPEN_WEATHER_KEY']
                request["x-rapidapi-host"] = ENV['OPEN_WEATHER_HOST']
                response = http.request(request)
                puts response.read_body
            end
        end
    end
   
end
