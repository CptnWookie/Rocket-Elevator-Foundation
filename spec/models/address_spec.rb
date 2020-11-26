require 'rails_helper'
require './app/models/address'

describe Address do

    before do
        @testAddress = Address.new
        puts @testAddress
    end

    describe "Generate number_and_street value" do

        context "custom_label_method method is called" do
            it "content generated should be strings" do
                numstreet = @testAddress.custom_label_method()
                puts numstreet
                expect(numstreet).to be_a(String)
            end
        end

        context "custom_label_method method is called" do
            it "content generated should not be nil" do
                numstreet = @testAddress.custom_label_method()
                puts numstreet
                expect(numstreet).to_not eq(nil)
            end
        end

    end
end