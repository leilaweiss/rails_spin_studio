# frozen_string_literal: true

class ReservationsController < ApplicationController
  before_action :authorize

  def index
    # binding.pry
    @spin_class = SpinClass.find(params[:spin_class_id])
    @reservations = @spin_class.reservations
    render :layout => false
    # render :json => @reservations
  end

  def new
    @spin_class = SpinClass.find(params[:spin_class_id])
    @reservation = Reservation.new
  end

  def show
    @reservation = current_user.reservations.find_by(
      id: params[:id]
    )
    # render :json => @reservations
  end

  def create
    @spin_class = SpinClass.find(params[:spin_class_id])
    @reservation = @spin_class.reservations.new(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to spin_class_path(@spin_class)
    else
      flash.now.alert = "Something went wrong, please try again"
      render new_spin_class_reservation_path(@spin_class)
    end
  end

private

  def reservation_params
    params.require(:reservation).permit(
      :guests,
      :spin_class_id,
      :user_id
    )
  end
end
