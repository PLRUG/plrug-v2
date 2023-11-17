# frozen_string_literal: true

class RenameEventsIdToEventIdInTalks < ActiveRecord::Migration[7.0]
  def change
    rename_column :talks, :events_id, :event_id
  end
end
