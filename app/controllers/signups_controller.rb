class SignupsController < ApplicationController

    def index 
        @signups = Signup.all 
    end

    def show
        @signup = Signup.find(params[:id])
    end
    
    
    def new
        @signup = Signup.new
    end

    def create
        @signup = Signup.create(signup_params)
            if @signup.valid? 
        redirect_to camper_path(@signup.camper)
            else   
                redirect_to new_signup_path
            end
        end
    




    private

    def signup_params
        params.require(:signup).permit(:activity_id, :camper_id, :time)
    end


end
