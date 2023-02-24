class BookingsController < ApplicationController

  def index
    @bookings = policy_scope(Booking)

  end

  def create
    @experience = Experience.find(params[:experience_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.experience = @experience
    authorize @booking
    if @booking.save
      redirect_to bookings_path
    else
      render "experiences/show", status: :unprocessable_entity
    end
  end

  def update
    @booking = Booking.find(params[:id])
    # raise 'NotAuthorizedError' unless current_user == @booking.user
    authorize @booking
    if @booking.update(booking_params)
      respond_to do |format|
        # display the form again
        format.html { redirect_to booking_path(@booking) }
        format.json do
          render json: {
            booking_html: render_to_string(partial: 'hosts/bookings/booking', formats: :html, locals: { booking: @booking } ),
          }.to_json
        end
      end

    else
      render :edit, status: :unprocessable_entity
    end
  end

  def booking_params
    params.require(:booking).permit(:status, :user_id, :experience_id, :start_date, :end_date)
  end
end
