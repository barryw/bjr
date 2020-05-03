# frozen_string_literal: true

class CreateJobStats < ActiveRecord::Migration[5.2]
  def change
    create_table :job_stats, options: 'ROW_FORMAT=DYNAMIC' do |t|
      t.references :user, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.integer :runs, default: 0
      t.integer :failed, default: 0
      t.decimal :avg_runtime, default: 0.0, precision: 10, scale: 4
      t.decimal :max_runtime, default: 0.0, precision: 10, scale: 4
      t.decimal :min_runtime, default: 0.0, precision: 10, scale: 4
      t.integer :job_count, default: 0
      t.integer :period, default: 0

      t.datetime :start_dt
      t.datetime :end_dt

      t.timestamps
    end
  end
end
