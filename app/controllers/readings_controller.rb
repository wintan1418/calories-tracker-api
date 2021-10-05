class ReadingsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
   
    @readings = current_user.readings
     json_response(@readings)
  end

  
  def create
    @reading = current_user.readings.create!(reading_params)
     json_response(@reading, :created)
  end


 def show
  @readings = Readings.find(params[:id])
  render json: @readings
 end

 def edit
  @readings = Readings.find(params[:id])
 end


 def update
  @readings = Readings.find(params[:id])

  if @readings.update(reading_params)
    redirect_to @reading
  else
    render :edit
  end
  end
  
    # Use callbacks to share common setup or constraints between actions.
    private


    # def current_user
    #   @current_user ||= session[:current_user_id] &&
    #     User.find_by(id: session[:current_user_id])
    # end
  


    # Only allow a list of trusted parameters through.
    def reading_params
      params.require(:reading).permit( :first_measure, :second_measure, :third_measure)
    end
end
