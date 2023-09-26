# frozen_string_literal: true

class RenameColumnJobKindFromUsers < ActiveRecord::Migration[7.0]
  def change
    rename_column :jobs, :kind, :job_kind_id
  end
end
