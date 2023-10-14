# frozen_string_literal: true

class AddColumnZipCodeToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :zip_code, :string
  end
end
