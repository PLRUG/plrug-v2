# frozen_string_literal: true

class CreateTalks < ActiveRecord::Migration[7.0]
  def change
    create_table   :talks do |t|
      t.string     :title
      t.text       :about
      t.references :events, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
