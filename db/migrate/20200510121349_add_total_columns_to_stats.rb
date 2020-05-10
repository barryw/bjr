class AddTotalColumnsToStats < ActiveRecord::Migration[5.2]
  def change
    add_column :job_stats, :total_jobs, :integer, null: false
    add_column :job_stats, :total_enabled, :integer, null: false
  end
end
