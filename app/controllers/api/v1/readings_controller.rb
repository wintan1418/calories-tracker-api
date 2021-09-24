class Api::V1::ReadingsController < AuthController
  
  
  def index
    # @reading = @current_user.reading
    # render json: @reading, status: :ok
    @readings = @user.readings

    render json: @readings, status: :ok
  end

  
  # POST /readings
  # POST /readings.json
  def create
    new_reading = current_user.Reading.create(reading_params)

      render json: new_reading, status: :created
  
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
