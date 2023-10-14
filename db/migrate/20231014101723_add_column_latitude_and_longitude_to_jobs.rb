# frozen_string_literal: true

class AddColumnLatitudeAndLongitudeToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :latitude, :decimal
    add_column :jobs, :longitude, :decimal
  end
end
