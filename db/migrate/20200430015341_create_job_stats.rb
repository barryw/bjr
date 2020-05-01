class CreateJobStats < ActiveRecord::Migration[5.2]
  def change
    create_table :job_stats, options: 'ROW_FORMAT=DYNAMIC' do |t|
      t.references :user, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.integer :runs, default: 0
      t.integer :failed, default: 0
      t.integer :avg_runtime, default: 0
      t.integer :max_runtime, default: 0
      t.integer :min_runtime, default: 0
      t.integer :period, default: 0
      t.datetime :start_dt
      t.datetime :end_dt

      t.timestamps
    end
  end
end
