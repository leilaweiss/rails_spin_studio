# frozen_string_literal: true

class SpinClassesController < ApplicationController
  def index
    @studios = Studio.all
    @spin_class = SpinClass.new
  end

  def new
    @spin_class = SpinClass.new
  end

  def show
    @spin_class = SpinClass.find(params[:id])
    respond_to do |format|
      format.html
      format.json do
        render json: @spin_class.to_json(:only => [ :instructor ])
      end
    end
  end

  def create
    @spin_class = SpinClass.new(spin_class_params)
    if @spin_class.save
      redirect_to spin_classes_path
    else
      redirect_to new_spin_class_reservation_path

    end
  end

private

  def spin_class_params
    params.require(:spin_class).permit(
      :name,
      :studio_id,
      :instructor
    )
  end
end
