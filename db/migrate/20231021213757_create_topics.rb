# frozen_string_literal: true

class CreateTopics < ActiveRecord::Migration[7.0]
  def change
    create_table   :topics do |t|
      t.string     :title
      t.text       :description
      t.references :talk, null: false, foreign_key: true

      t.timestamps
    end
  end
end
