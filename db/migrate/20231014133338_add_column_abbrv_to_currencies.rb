# frozen_string_literal: true

class AddColumnAbbrvToCurrencies < ActiveRecord::Migration[7.0]
  def change
    add_column :currencies, :abbrv, :string
  end
end
