# frozen_string_literal: true

class AddColumnCapitalAndCountryIdToCities < ActiveRecord::Migration[7.0]
  def change
    add_column    :cities, :capital, :boolean, default: false
    add_reference :cities, :country, null: false, foreign_key: true
  end
end
