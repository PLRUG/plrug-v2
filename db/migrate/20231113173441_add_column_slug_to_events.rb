# frozen_string_literal: true

class AddColumnSlugToEvents < ActiveRecord::Migration[7.0]
  def change
    add_column :events, :slug, :string
  end
end
