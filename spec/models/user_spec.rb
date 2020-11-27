require 'rails_helper'
require './app/models/user'

describe Address, type: :model do
    let!(:first_name) {"Mathieu"}
    let!(:last_name) {"Houde"}
       
    describe "Generate full_address value" do
        context "custom_label_method method is called" do
            it "content generated to define First Name of a user" do
                usertest = User.new(first_name: first_name, last_name: last_name)
                expect(usertest.first_name).to eq(first_name)
                puts usertest.first_name
            end
        end

        context "custom_label_method method is called" do
            it "content generated to define Last Name of a user" do
                usertest = User.new(first_name: first_name, last_name: last_name)
                expect(usertest.last_name).to eq(last_name)
                puts usertest.last_name
            end
        end
    end
end