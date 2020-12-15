class SpeechToTextController < ApplicationController

    require 'net/http'
    require 'json'
        def Uploadfile

            uri = URI('https://westus.api.cognitive.microsoft.com/speechtotext/v3.0/endpoints/{id}')
            uri.query = URI.encode_www_form({
            })

            # Requesting the uri
            request = Net::HTTP::Post.new(uri.request_uri)

            # Request headers 
            request['Ocp-Apim-Subscription-Key'] = '{f73bda11030e4785ae1c4b4a153d7356}'
            
            # Establishing the content type
            request['Content-Type'] = 'application/json'
            
            # Request body (File)
            pathName = Rails.root + 'app/assets/audio/'
            fileName = ''
            File.open("#{pathName}#{fileName}.wav") do |aFile|
            @file_data = "#{aFile.read}; samplerate=16000"
            end
            
            # Requesting the data
            request.body = @file_data

            # Putting the answer in a variable
            response = Net::HTTP.start(uri.host, uri.port, :use_ssl => uri.scheme == 'https') do |http|
                http.request(request)
            end

            # Adding the body response to the audio variable
            audio = response.body
            # Parsing the audio into text
            obj = JSON.parse(audio)['DisplayText']
            # Adding the text into a variable, and rendering the answer inside a div
            puts obj
            text = "<div>#{obj}</div>"
            return text
        end
    end
end