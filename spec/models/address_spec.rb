require 'rails_helper'
require './app/models/address'

describe Address, type: :model do
    let!(:number_and_street) {"418-725 Boulevard Lebourgneuf"}
    let!(:postal_code) {"G2J 0C4"}
    let!(:city) {"Quebec City"}
    let!(:country) {"Canada"}
    
    describe "Generate number_and_street value" do
        context "full_address method is called" do
            it "content generated should display number_and_street" do
                addresstest = Address.new(number_and_street: number_and_street, postal_code: postal_code, city: city, country: country)
                expect(addresstest.number_and_street).to eq(number_and_street)
                puts addresstest.number_and_street
            end
        end
        context "full_address method is called" do
            it "content generated should display postal_code" do
                addresstest = Address.new(number_and_street: number_and_street, postal_code: postal_code, city: city, country: country)
                expect(addresstest.postal_code).to eq(postal_code)
                puts addresstest.postal_code
            end
        end
        context "full_address method is called" do
            it "content generated should display city" do
                addresstest = Address.new(number_and_street: number_and_street, postal_code: postal_code, city: city, country: country)
                expect(addresstest.city).to eq(city)
                puts addresstest.city
            end
        end
        context "full_address method is called" do
            it "content generated should display country" do
                addresstest = Address.new(number_and_street: number_and_street, postal_code: postal_code, city: city, country: country)
                expect(addresstest.country).to eq(country)
                puts addresstest.country
            end
        end
        context "full_address method is called" do
            it "content generated should display full_address" do
                addresstest = Address.new(number_and_street: number_and_street, postal_code: postal_code, city: city, country: country)
                expect(addresstest.full_address).to eq("#{number_and_street}, #{postal_code}, #{city}, #{country}")
                puts addresstest.full_address
            end
        end
    end
end