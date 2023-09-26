# frozen_string_literal: true

class CreateBillingTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :billing_types do |t|
      t.string   :name
      t.string   :slug

      t.timestamps
    end
  end
end
