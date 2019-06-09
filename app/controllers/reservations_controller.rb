class ReservationsController < ApplicationController
    before_action :authorize

  def index
    @user = User.find(current_user.id)
    @reservations = Reservation.user_reservations(current_user)
  end

  def show
    @reservation = Reservation.find_by(user_id: current_user.id, id: params[:id])
  end
end

