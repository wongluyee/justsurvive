class Hosts::BookingsController < ApplicationController

  def index
    @bookings = policy_scope([:hosts, Booking]).includes(:user).order(:start_date)

  end
end
