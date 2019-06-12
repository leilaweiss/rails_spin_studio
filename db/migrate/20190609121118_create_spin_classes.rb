# frozen_string_literal: true

class CreateSpinClasses < ActiveRecord::Migration[5.2]
  def change
    create_table :spin_classes do |t|
      t.string :name

      t.timestamps
    end
  end
end
