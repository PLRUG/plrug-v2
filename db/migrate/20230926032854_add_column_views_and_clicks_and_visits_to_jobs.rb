# frozen_string_literal: true

class AddColumnViewsAndClicksAndVisitsToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :views, :integer,  default: false
    add_column :jobs, :visits, :integer, default: false
    add_column :jobs, :clicks, :integer, default: false
  end
end
