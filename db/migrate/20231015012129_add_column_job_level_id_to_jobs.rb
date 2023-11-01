# frozen_string_literal: true

class AddColumnJobLevelIdToJobs < ActiveRecord::Migration[7.0]
  def change
    add_reference :jobs, :job_level, null: false, foreign_key: true
  end
end
