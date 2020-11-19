class InterventionsController < ApplicationController
    before_action :authenticate_user!    


    def new
        @intervention = Intervention.new
    end
    
      
    def create
        @intervention = Intervention.new(intervention_params)
        @intervention.author                = current_user.id;
        @intervention.customer_id           = params[:intervention][:customer_id]
        @intervention.building_id           = params[:intervention][:building_id]
        @intervention.battery_id            = params[:intervention][:battery_id]
        @intervention.column_id             = params[:intervention][:column_id]
        @intervention.elevator_id           = params[:intervention][:elevator_id]
        @intervention.employee_id           = params[:intervention][:employee_id]
        # @intervention.startIntervention   = params[:intervention][:startIntervention]
        # @intervention.endIntervention     = params[:intervention][:endIntervention]
        @intervention.result              = params[:intervention][:result]
        @intervention.report              = params[:intervention][:report]
        @intervention.status              = params[:intervention][:status]
        
        
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
