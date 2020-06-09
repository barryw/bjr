# frozen_string_literal: true

class AddScheduledStartTimeToJobRuns < ActiveRecord::Migration[5.2]
  def change
    add_column :job_runs, :scheduled_start_time, :datetime, null: true
    add_column :job_runs, :schedule_diff_in_seconds, :integer, null: true
  end
end
