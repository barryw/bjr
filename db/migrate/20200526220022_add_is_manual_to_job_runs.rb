# frozen_string_literal: true

class AddIsManualToJobRuns < ActiveRecord::Migration[5.2]
  def change
    add_column :job_runs, :is_manual, :boolean, default: false
  end
end
