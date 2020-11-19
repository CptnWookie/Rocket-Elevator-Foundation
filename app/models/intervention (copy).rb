class Intervention < ApplicationRecord
  belongs_to :user, optional: true
  
  belongs_to :customer, optional: false
  belongs_to :building, optional: false
  belongs_to :battery, optional: true
  belongs_to :column, optional: true
  belongs_to :elevator, optional: true
  belongs_to :employee, optional: false

  # after_create :new_intervention_ticket
  after_save :save_to_mysql

  def save_to_mysql
    Intervention.create!({intervention_id: self.id})
  end

  
  # This part create a ticket with a subject and the body, the body come from the comment at the top of the page depending on the type of building
  def new_intervention_ticket
    
    comment = { :value =>   "New Intervention Ticket created by #{self.employee.first_name} #{self.employee.last_name} for #{self.customer.company_name}. 
                            \nAn intervention is required for : 
                            \n- Building ##{self.building.id}
                            \n- Battery ##{self.battery.id}
                            \n- Column ##{self.column.id}
                            \n- Elevator ##{self.elevator.id}
                            \n- Employee to be assigned to the task : #{self.employee.first_name} #{self.employee.last_name}
                            \n- Description of the request for intervention :
                            \n- TEXT TEXT TEXT TEXT TEXT TEXT TEXT" }
    
    
    client = ZendeskAPI::Client.new do |config|
        config.url = 'https://rocketelevators1337.zendesk.com/api/v2'
        config.username = 'alexandreleblanc892@gmail.com'
        config.token = ENV["zendesk_api"]
    end

    ZendeskAPI::Ticket.create!(client,
      :subject => "Intervention Request", 
      :comment => comment,
    
    # This is the priority for viewing tickets, if urgent, tickets will appear at the top of the list

      :priority => "normal",
      :type => "problem"
    )
  end
end
