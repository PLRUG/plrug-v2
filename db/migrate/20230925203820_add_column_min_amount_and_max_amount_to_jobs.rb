# frozen_string_literal: true

class AddColumnMinAmountAndMaxAmountToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :min_amount, :float
    add_column :jobs, :max_amount, :float
  end
end
