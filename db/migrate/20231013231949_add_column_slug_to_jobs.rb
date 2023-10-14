# frozen_string_literal: true

class AddColumnSlugToJobs < ActiveRecord::Migration[7.0]
  def change
    add_column :jobs, :slug, :string
  end
end
