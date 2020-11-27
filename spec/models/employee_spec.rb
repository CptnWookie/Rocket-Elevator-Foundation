require 'rails_helper'
require './app/models/employee'

describe Employee, type: :model do
    
    describe "Generate full_address value" do
        
        context "custom_label_method method is called" do
            it "content generated to define First Name of a user" do
                first_name = nil
                last_name = "Leblanc"
                usertest = User.new(first_name: first_name, last_name: last_name)
                expect(usertest.first_name).to eq(nil)
                puts "This field is required and needs to be filled..."
            end
        end
        
        context "custom_label_method method is called" do
            it "content generated to define First Name of a user" do
                first_name = "Alexandre"
                last_name = 1
                usertest = User.new(first_name: first_name, last_name: last_name)
                expect(usertest.last_name).to_not be_a(Integer)
                puts "This field needs to be a string. You've enter an integer value..."
            end
        end
        
    end
end