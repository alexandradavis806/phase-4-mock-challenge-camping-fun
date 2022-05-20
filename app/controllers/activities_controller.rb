class ActivitiesController < ApplicationController

    def index
        activites = Activity.all
        render json: activites
    end 

    # def show
    #     activity = Activity.find_by(id: params[:id])
    #     render json: activity
    # end 

    def destroy
        activity = Activity.find_by(id: params[:id])
        # if activity
        # activity.signups.destroy_all
        activity.destroy 
        head :no_content
        
        # else 
        #     render json: { error: "Activity not found" }, status: :not_found
        # end
    end 

end
