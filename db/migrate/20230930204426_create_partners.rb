# frozen_string_literal: true

class CreatePartners < ActiveRecord::Migration[7.0]
  def change
    create_table   :partners do |t|
      t.string     :logo
      t.string     :name
      t.integer    :kind
      t.string     :url_path
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
