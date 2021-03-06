# frozen_string_literal: true

class AddCreatedAtAndJobIdIndexToJobRuns < ActiveRecord::Migration[5.2]
  def change
    add_index :job_runs, %i[job_id created_at]
    add_index :job_runs, %i[start_time]
  end
end
