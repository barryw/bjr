class AddJobRunStatusToJob < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :avg_run_duration, :decimal, default: 0.0, precision: 10, scale: 4
    add_column :jobs, :min_run_duration, :decimal, default: 0.0, precision: 10, scale: 4
    add_column :jobs, :max_run_duration, :decimal, default: 0.0, precision: 10, scale: 4
    add_column :jobs, :avg_run_duration_trend, :decimal, default: 0.0, precision: 10, scale: 4

    add_column :jobs, :avg_run_lag, :decimal, default: 0.0, precision: 10, scale: 4
    add_column :jobs, :min_run_lag, :decimal, default: 0.0, precision: 10, scale: 4
    add_column :jobs, :max_run_lag, :decimal, default: 0.0, precision: 10, scale: 4
    add_column :jobs, :avg_run_lag_trend, :decimal, default: 0.0, precision: 10, scale: 4
  end
end
