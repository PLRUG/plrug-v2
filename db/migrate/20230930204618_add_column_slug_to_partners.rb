# frozen_string_literal: true

class AddColumnSlugToPartners < ActiveRecord::Migration[7.0]
  def change
    add_column :partners, :slug, :string
  end
end
