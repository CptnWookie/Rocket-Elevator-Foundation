require 'rails_helper'
require 'elevator_media'

describe ElevatorMedia::Streamer do
    describe '#getContent' do
        context "Return Weather in Quebec City" do
            it 'returns string showing the current weather in Quebec City' do
                expect(ElevatorMedia::Streamer.getContent("weatherVal"))
            end
        end
    end
end
