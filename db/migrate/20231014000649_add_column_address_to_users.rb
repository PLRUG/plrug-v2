# frozen_string_literal: true

class AddColumnAddressToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :string
  end
end
