# frozen_string_literal: true

class AddColumnKindToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :kind, :integer
  end
end
