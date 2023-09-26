# frozen_string_literal: true

class AddColumnLocationToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :location, :integer
  end
end
