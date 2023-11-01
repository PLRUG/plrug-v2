# frozen_string_literal: true

class CreateJobLevels < ActiveRecord::Migration[7.0]
  def change
    create_table :job_levels do |t|
      t.string   :name
      t.string   :slug

      t.timestamps
    end
  end
end
