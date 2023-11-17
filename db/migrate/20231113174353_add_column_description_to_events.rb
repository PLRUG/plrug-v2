# frozen_string_literal: true

class AddColumnDescriptionToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :description, :text
  end
end
