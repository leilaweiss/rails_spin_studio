# frozen_string_literal: true

class AddStudioIdToSpinClasses < ActiveRecord::Migration[5.2]
  def change
    add_column :spin_classes, :studio_id, :integer
  end
end
