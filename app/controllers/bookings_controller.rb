class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    authorize @booking
    if booking.save
      redirect_to bookings_path
    else
      render :new, status: unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    # raise 'NotAuthorizedError' unless current_user == @booking.user
    authorize @booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:status, :user_id, :experience_id, :start_date, :end_date)
  end
end
