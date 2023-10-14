# frozen_string_literal: true

class AddColumnAddressToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :address, :string
  end
end
