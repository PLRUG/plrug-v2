# frozen_string_literal: true

class AddColumnCountryIdToJobs < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs, :country, null: false, foreign_key: true
  end
end
