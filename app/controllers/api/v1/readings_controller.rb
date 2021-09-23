class Api::V1::ReadingsController < AuthController
  
  def index
    @user = User.includes(:readings).find(params[:email])
    render json: @user.readings, status: :ok
  end

  
  # POST /readings
  # POST /readings.json
  def create
    new_reading = Reading.create(reading_params)

      render json: new_reading, status: :created
  
  end

  # PATCH/PUT /readings/1
  # PATCH/PUT /readings/1.json
  # def update
  #   if @reading.update(reading_params)
  #     render :show, status: :ok, location: @reading
  #   else
  #     render json: @reading.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /readings/1
  # DELETE /readings/1.json
  # def destroy
  #   @reading.destroy
  # end

  
    # Use callbacks to share common setup or constraints between actions.
    private

    # Only allow a list of trusted parameters through.
    def reading_params
      params.require(:reading).permit(:meal, :calorie_measure, :user, :date)
    end
end
