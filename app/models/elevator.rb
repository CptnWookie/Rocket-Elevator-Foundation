class Elevator < ApplicationRecord
  belongs_to :column
  has_many :interventions
  # before_update :twilio_sms
  # before_update :slack



  def twilio_sms

    # if the elevator status change to Intervention, you'll receive a text message 

    if self.elevator_status == "Intervention"
      account_sid = ENV["twilio_account_sid"]
      auth_token = ENV["twilio_auth_token"] 

      @client = Twilio::REST::Client.new account_sid, auth_token
      message = @client.messages.create(
          body: "The elevator with Serial Number #{self.serial_number} require maintenance.",
          to: "+15145037764",
          from: "+18672921909")  
      
      puts message.sid
      
    end
  end



  def slack
      if self.elevator_status_changed?
        require 'date'
        current_time = DateTime.now.strftime("%d-%m-%Y %H:%M")
        notifier = Slack::Notifier.new ENV["slack_api_url"]
        notifier.ping "The Elevator #{self.id} with Serial Number #{self.serial_number} changed status from #{self.elevator_status_was} to #{self.elevator_status} at #{current_time}."
  

      end
  end 
  
  end




