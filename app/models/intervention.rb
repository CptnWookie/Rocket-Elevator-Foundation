class Intervention < ApplicationRecord
  belongs_to :user, optional: true  
  belongs_to :customer, optional: true
  belongs_to :building, optional: true
  belongs_to :battery, optional: true
  belongs_to :column, optional: true
  belongs_to :elevator, optional: true
  belongs_to :employee, optional: true

  # After creating a new ticket from the Def Create in the Controller, trigger Def new_intervention_ticket
  #after_create :new_intervention_ticket
  
  
  def new_intervention_ticket

    # Author is described in the controller as the current_user_id
    # Set the values of firstname, lastname and combine as fullname for Author prior creating the "comment" value
    authorfirstname = User.find(self.author).first_name
    authorlastname = User.find(self.author).last_name
    authorfullname = "#{authorfirstname} #{authorlastname}"

    # Set the value of companyname for Customer prior creating the "comment" value
    companyname = Customer.find(self.customer_id).company_name
    
    # Set the values of firstname, lastname and combine as fullname for Employee prior creating the "comment" value
    employeefirstname = Employee.find(self.employee_id).first_name
    employeelastname = Employee.find(self.employee_id).last_name
    employeefullname = "#{employeefirstname} #{employeelastname}"

    # Set the value of "comment" as the following text refering to the input values in the form previouly created
    comment = { :value =>   "New Intervention Ticket created by #{authorfullname} for #{companyname}. 
                            \nAn intervention is required for : 
                            \n- Building ##{self.building_id}
                            \n- Battery ##{self.battery_id}
                            \n- Column ##{self.column_id}
                            \n- Elevator ##{self.elevator_id}
                            \n- Employee to be assigned to the task : #{employeefullname}
                            \n- Description of the request for intervention : #{self.report}" }
    
    # Set the values of "client" related to the configuration of Zendesk API
    # The URL, Username and Token are secured in Environment Variables                        
    client = ZendeskAPI::Client.new do |config|
        config.url = ENV["ZENDESK_URL"]
        config.username = ENV["ZENDESK_USER"]
        config.token = ENV["ZENDESK_AUTH"]
    end
    
    # Creates a ticket with a subject predetermined and the body value to "comment", which was descripbed previously.
    ZendeskAPI::Ticket.create!(client,
    :subject => "Intervention Request", 
    :comment => comment,
    
    # This is the priority for viewing tickets, if urgent, tickets will appear at the top of the list
    :priority => "normal",
    :type => "problem"
    )
  end
end

