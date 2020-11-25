require 'rails_helper'
require 'address'

describe Address do
    describe '#full_address' do
        context "Return City's Address" do
            it 'returns string showing the current city in the address' do
                expect(Address::full_address("city"))
            end
        end
    end 
end