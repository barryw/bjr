class CreateIndexForManualJobRun < ActiveRecord::Migration[5.2]
  def change
    add_index :job_runs, %i[job_id start_time is_manual]
  end
end
