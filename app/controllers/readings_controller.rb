class ReadingsController < ApplicationController
  # skip_before_action :verify_authenticity_token

  def index
    @readings = Reading.where(user_id: current_user.id)
    puts @readings
    json_response(@readings)
  end

  def create
    @reading = current_user.readings.create(reading_params)
    puts @reading, current_user, current_user.id
    json_response(@reading, :created)

    puts @reading.errors.full_messages
  end

  def show
    @readings = Reading.find(params[:id])
    render json: @readings
  end

  def edit
    @readings = Reading.find(params[:id])
  end

  def update
    @readings = Reading.find(params[:id])

    if @readings.update(reading_params)
      redirect_to @reading
    else
      render :edit
    end
  end

  private

  def reading_params
    params.require(:reading).permit(
      :first_measure,
      :second_measure,
      :third_measure,
      :overall_measure
    )
  end
end
