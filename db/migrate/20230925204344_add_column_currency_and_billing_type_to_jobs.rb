# frozen_string_literal: true

class AddColumnCurrencyAndBillingTypeToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :currency, :string
    add_column :jobs, :billing_type, :integer
  end
end
