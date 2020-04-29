class AddCreatedAtAndJobIdIndexToJobRuns < ActiveRecord::Migration[5.2]
  def change
    add_index :job_runs, %i[job_id created_at]
  end
end
