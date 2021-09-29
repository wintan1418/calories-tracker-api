class Api::V1::ReadingsController < ApplicationController
  
  
  def index
    # @reading = @current_user.reading
    # render json: @reading, status: :ok
    @readings = current_user.readings
    render json: @readings, status: :ok
  end

  
  # POST /readings
  # POST /readings.json
  def create
    @reading = current_user.readings.create!(result_params)
    render json :@readings, status: :created
  end


 def show
  @readings = Reading.find(params[:id])
  render json :@readings
 end

 def edit
  @reading = Reading.find(params[:id])
 end


 def update
  @reading = Reading.find(params[:id])

  if @reading.update(reading_params)
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
      params.require(:reading).permit(:meal, :calorie_measure)
    end
end
