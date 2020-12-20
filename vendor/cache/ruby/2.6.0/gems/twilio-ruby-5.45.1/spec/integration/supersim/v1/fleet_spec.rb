##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'Fleet' do
  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.supersim.v1.fleets.create(network_access_profile: 'HAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {'NetworkAccessProfile' => 'HAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX', }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://supersim.twilio.com/v1/Fleets',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "unique_name",
          "data_enabled": true,
          "data_limit": 1000,
          "data_metering": "payg",
          "date_created": "2019-07-30T20:00:00Z",
          "date_updated": "2019-07-30T20:00:00Z",
          "commands_enabled": true,
          "commands_method": "GET",
          "commands_url": "https://google.com",
          "network_access_profile_sid": "HAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://supersim.twilio.com/v1/Fleets/HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.supersim.v1.fleets.create(network_access_profile: 'HAXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')

    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.supersim.v1.fleets('HFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://supersim.twilio.com/v1/Fleets/HFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "unique_name",
          "data_enabled": true,
          "data_limit": 1000,
          "data_metering": "payg",
          "date_created": "2019-07-30T20:00:00Z",
          "date_updated": "2019-07-30T20:00:00Z",
          "commands_enabled": true,
          "commands_method": "POST",
          "commands_url": null,
          "network_access_profile_sid": "HAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://supersim.twilio.com/v1/Fleets/HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.supersim.v1.fleets('HFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.supersim.v1.fleets.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://supersim.twilio.com/v1/Fleets',
    ))).to eq(true)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "fleets": [],
          "meta": {
              "first_page_url": "https://supersim.twilio.com/v1/Fleets?NetworkAccessProfile=HAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "key": "fleets",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/Fleets?NetworkAccessProfile=HAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0"
          }
      }
      ]
    ))

    actual = @client.supersim.v1.fleets.list()

    expect(actual).to_not eq(nil)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "first_page_url": "https://supersim.twilio.com/v1/Fleets?NetworkAccessProfile=HAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "key": "fleets",
              "next_page_url": null,
              "page": 0,
              "page_size": 50,
              "previous_page_url": null,
              "url": "https://supersim.twilio.com/v1/Fleets?NetworkAccessProfile=HAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0"
          },
          "fleets": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "unique_name": "Pilot Fleet",
                  "data_enabled": true,
                  "data_limit": 1000,
                  "data_metering": "payg",
                  "date_created": "2019-10-15T20:00:00Z",
                  "date_updated": "2019-10-15T20:00:00Z",
                  "commands_enabled": true,
                  "commands_method": "POST",
                  "commands_url": null,
                  "network_access_profile_sid": "HAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sid": "HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "https://supersim.twilio.com/v1/Fleets/HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ]
      }
      ]
    ))

    actual = @client.supersim.v1.fleets.list()

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.supersim.v1.fleets('HFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://supersim.twilio.com/v1/Fleets/HFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update_unique_name responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "unique_name": "unique_name",
          "data_enabled": true,
          "data_limit": 1000,
          "data_metering": "payg",
          "date_created": "2019-10-15T20:00:00Z",
          "date_updated": "2019-10-15T20:00:00Z",
          "commands_enabled": true,
          "commands_method": "POST",
          "commands_url": null,
          "network_access_profile_sid": "HAaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sid": "HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://supersim.twilio.com/v1/Fleets/HFaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.supersim.v1.fleets('HFXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end
end