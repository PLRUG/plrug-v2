# frozen_string_literal: true

class AddColumnRemoteToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :remote, :boolean, default: false
  end
end
