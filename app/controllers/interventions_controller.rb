class InterventionsController < ApplicationController
    before_action :authenticate_user!    


    def new
        @intervention = Intervention.new
    end
    
      
    def create
        @intervention = Intervention.new(intervention_params)
        @intervention.author                = current_user.id
        @intervention.result                = "Incomplete"
        @intervention.status                = "Pending"
        
        
        @intervention.save
        respond_to do |format|
            if @intervention.save 
                format.html { redirect_to root_path, notice: 'Your Intervention Ticket was successfully submitted !' }
            else         
                format.html { render :interventions_index_path }
            end
        end
        
    end
    

    def intervention_params
        params.require(:intervention).permit(:author, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :result, :report, :status)
    end
end
