# frozen_string_literal: true

class RenameColumnBillingTypeFromUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :billing_type, :billing_type_id
  end
end
