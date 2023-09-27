# frozen_string_literal: true

class AddColumnStatusToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :status, :integer, default: 'active'
  end
end
