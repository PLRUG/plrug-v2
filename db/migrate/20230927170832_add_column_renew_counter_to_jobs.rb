# frozen_string_literal: true

class AddColumnRenewCounterToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :renew_counter, :integer, default: 0
  end
end
