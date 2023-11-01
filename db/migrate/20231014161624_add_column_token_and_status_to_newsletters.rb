# frozen_string_literal: true

class AddColumnTokenAndStatusToNewsletters < ActiveRecord::Migration[7.0]
  def change
    add_column :newsletters, :token, :string, default: nil
    add_column :newsletters, :status, :boolean, default: false
  end
end
