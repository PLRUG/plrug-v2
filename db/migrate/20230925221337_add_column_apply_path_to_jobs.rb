# frozen_string_literal: true

class AddColumnApplyPathToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :apply_path, :string
  end
end
