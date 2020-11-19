class Intervention < ApplicationRecord
  belongs_to :user, optional: true  
  belongs_to :customer, optional: true
  belongs_to :building, optional: true
  belongs_to :battery, optional: true
  belongs_to :column, optional: true
  belongs_to :elevator, optional: true
  belongs_to :employee, optional: true

  after_create :new_intervention_ticket
  
  # This part create a ticket with a subject and the body, the body come from the comment at the top of the page depending on the type of building
  def new_intervention_ticket

    authorfirstname = User.find(self.author).first_name
    authorlastname = User.find(self.author).last_name
    authorfullname = "#{authorfirstname} #{authorlastname}"
    companyname = Customer.find(self.customer_id).company_name
    # employeefirstname = Employee.find(self.employee_id).first_name
    # employeelastname = Employee.find(self.employee_id).last_name
    # employeefullname = "#{employeefirstname} #{employeelastname}"


    comment = { :value =>   "New Intervention Ticket created by #{authorfullname} for #{companyname}. 
                            \nAn intervention is required for : 
                            \n- Building ##{self.building_id}
                            \n- Battery ##{self.battery_id}
                            \n- Column ##{self.column_id}
                            \n- Elevator ##{self.elevator_id}
                            \n- Employee to be assigned to the task : #{self.employee_id}
                            \n- Description of the request for intervention :
                            \n- #{self.report}" }
    
    client = ZendeskAPI::Client.new do |config|
        config.url = ENV["ZENDESK_URL"]
        config.username = ENV["ZENDESK_USER"]
        config.token = ENV["ZENDESK_AUTH"]
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

