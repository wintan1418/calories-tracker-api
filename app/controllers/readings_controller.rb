class ReadingsController < ApplicationController
  before_action :set_reading, only: %i[ show update destroy ]

  # GET /readings
  # GET /readings.json
  def index
    @user = User.includes(:readings).find(params[:email])
    render json: @user.readings, status: :ok
  end

  # GET /readings/1
  # GET /readings/1.json
  def show
    
  end

  # POST /readings
  # POST /readings.json
  def create
    @reading = Reading.new(reading_params)

    if @reading.save
      render :show, status: :created, location: @reading
    else
      render json: @reading.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /readings/1
  # PATCH/PUT /readings/1.json
  def update
    if @reading.update(reading_params)
      render :show, status: :ok, location: @reading
    else
      render json: @reading.errors, status: :unprocessable_entity
    end
  end

  # DELETE /readings/1
  # DELETE /readings/1.json
  def destroy
    @reading.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reading
      @reading = Reading.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reading_params
      params.require(:reading).permit(:meal, :calorie_measure, :user, :date)
    end
end
