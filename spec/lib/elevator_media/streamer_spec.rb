require 'rails_helper'
require 'elevator_media/streamer'

describe ElevatorMedia::Streamer do

    before do
        @media = ElevatorMedia::Streamer.new
    end

    describe "Generate media content ready to be displayed" do
        
        context "getContent method is called" do
            it "should not be nil" do
                html = @media.getContent()
                puts html
                expect(html).to_not eq(nil)
            end
        end
        
        
        context "getContent method is called" do
            it "content generated should be strings" do
                html = @media.getContent()
                puts html
                expect(html).to be_a(String)
            end
        end
        
        context "getContent method is called" do
            it "valid HTML(include div tag) should be returned" do
                html = @media.getContent()
                puts html
                expect(html).to include('div')
            end
        end

    end
end
