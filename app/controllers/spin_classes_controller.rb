class SpinClassesController < ApplicationController
  def index
    @spin_classes = SpinClass.all
  end

  def new
    @spin_class = SpinClass.new
  end

  def create
    @spin_class = SpinClass.new(spin_class_params)

    if @spin_class.save
      redirect_to spin_classes_path
    else
      flash.now.alert = "Please Fill Out a Name for the Class"
      render "spin_classes/new"
    end
  end

private
  def spin_class_params
    params.require(:spin_class).permit(
      :name)
  end
end
