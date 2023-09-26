# frozen_string_literal: true

class RenameColumnLocationFromUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :location, :city_id
  end
end
