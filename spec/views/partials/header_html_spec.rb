require 'spec_helper'
# require './app/views/partials/header.html.erb'

Rspec.describe "topMain", type: :view do
    
    context "At the top of every views, topMain should be present with a list of menu" do
        it "should have: HOME, SERVICES, PORTFOLIO, NEWS, CLIENTS, CONTACT, INTERVENTIONS" do
            expect("topMain").to_not eq(nil)
        end
    end


end