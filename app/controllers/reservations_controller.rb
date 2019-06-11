class ReservationsController < ApplicationController
    before_action :authorize

  def index
    @user = User.find(current_user.id)
    @reservations = Reservation.user_reservations(current_user)
  end

  def new
    @spin_class = SpinClass.find(params[:spin_class_id])
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find_by(user_id: current_user.id, id: params[:id])
  end


  def create
    @spin_class = SpinClass.find(params[:spin_class_id])
    # @reservation = Reservation.new(reservation_params)
    # @reservation.spin_class = @spin_class
    @reservation = @spin_class.reservations.new(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to spin_classes_path
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
      :user_id)
  end
end

