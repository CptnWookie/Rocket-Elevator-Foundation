module ElevatorMedia
           
    class Streamer
        
        
        def getContent
           puts "Hello there!"
        end

        # require 'uri'
        # require 'net/http'
        # require 'openssl'

        # url = URI("https://community-open-weather-map.p.rapidapi.com/weather?q=Quebec%2Cca&lat=46.8428435&lon=-71.2818835&lang=null&units=%22metric%22&mode=xml%2C%20html")

        # http = Net::HTTP.new(url.host, url.port)
        # http.use_ssl = true
        # http.verify_mode = OpenSSL::SSL::VERIFY_NONE

        # request = Net::HTTP::Get.new(url)
        # request["x-rapidapi-key"] = 'cabeaa13femsh397090bcff2f3e1p1b842cjsn9ddf1fec8387'
        # request["x-rapidapi-host"] = 'community-open-weather-map.p.rapidapi.com'

        # response = http.request(request)
        # puts response.read_body

        # request = Net::HTTP::Get.new(url)
        # request["x-rapidapi-key"] = ENV["RAPIDAPI_NEWS_KEY"]
        # request["x-rapidapi-host"] = ENV["RAPIDAPI_NEWS_HOST"]

        # response = http.request(request)
        # puts response.read_body

        Streamer.new.getContent

    end
   
end
