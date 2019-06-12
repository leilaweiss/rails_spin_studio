# frozen_string_literal: true

class RemoveStudioIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :studio_id
  end
end
