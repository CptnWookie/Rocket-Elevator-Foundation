require 'rails_helper'
require 'elevator_media/streamer'

describe ElevatorMedia::Streamer do
    before do
        @media = ElevatorMedia::Streamer.new
    end
    describe "#getContent" do
        context "Return Weather in Quebec City" do
            it "getContent should return valid HTML(include div tag)" do
                html = @media.getContent()
                puts html
                expect(html).to include('div')
            end
        end
    end
end
