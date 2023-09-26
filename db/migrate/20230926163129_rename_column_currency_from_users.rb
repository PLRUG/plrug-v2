# frozen_string_literal: true

class RenameColumnCurrencyFromUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :currency, :currency_id
  end
end
