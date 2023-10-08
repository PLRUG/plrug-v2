# frozen_string_literal: true

class AddColumnSlugToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :slug, :string
  end
end
