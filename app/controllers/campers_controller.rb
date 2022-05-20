class CampersController < ApplicationController

    def index
        campers = Camper.all
        render json: campers
    end 

    def show
        camper = Camper.find(params[:id])
        render json: camper, serializer: CamperActivitySerializer
    end 

    # def show
    #     begin 
    #         camper = Camper.find(params[:id])
    #         render json: camper, serializer: CamperActivitySerializer
    #     rescue ActiveRecord:RecordNotFound => err
    #         render json: { error: err }, status: :not_found
    #     end 
    # end 
        

    def create 
        camper = Camper.create!(camper_params)
        render json: camper, status: :created
    end 

    # def create 
    #     camper = Camper.create(camper_params)
    #     if camper.id
    #         render json: camper, status: :created
    #     else
    #         render json: { errors: camper.errors.full_messages}, status: :unprocessable_entity
    #     end
    # end

    private

    def camper_params
        params.permit(:name, :age)
    end
end
