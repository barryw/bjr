# frozen_string_literal: true

class AddJobLagStats < ActiveRecord::Migration[5.2]
  def change
    add_column :job_stats, :avg_job_lag, :decimal, default: 0.0, precision: 10, scale: 4
    add_column :job_stats, :max_job_lag, :integer
    add_column :job_stats, :min_job_lag, :integer
  end
end
