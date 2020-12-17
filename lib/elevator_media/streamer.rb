require 'uri'
require 'net/http'
require 'openssl'
require 'rails_helper'
require 'json'

module ElevatorMedia
           
    class Streamer
        
        
        def getContent()
            weatherVal = weather()
            desc = weatherVal.first["weather"]["description"]
            tmp = weatherVal.first["temp"]
            sun = weatherVal.first["sunset"]

            html = "
                <html><body>
                    <div>
                        Weather: #{desc},
                        Temp: #{tmp},
                        Sunset: #{sun},
                    </div>
                </html></body> "
                puts html

            # puts html
            return html   
        end
        

        def weather
            url = ENV["OPEN_WEATHER_URI"]
            
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
                        
            request = Net::HTTP::Get.new(url)
            request["x-rapidapi-key"] = ENV['OPEN_WEATHER_KEY']
            request["x-rapidapi-host"] = ENV['OPEN_WEATHER_HOST']
            
            response = http.request(request)
            if response.code == "200"
                result = JSON.parse(response.body)
                resultdata = result["data"]
                return resultdata
            else
                return "It's not working"
            end
        end
    end
end
