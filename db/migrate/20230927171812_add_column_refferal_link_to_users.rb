# frozen_string_literal: true

  class AddColumnRefferalLinkToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :referral_link, :string
  end
end
