class AddInstructorToSpinClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :spin_classes, :instructor, :string
  end
end
