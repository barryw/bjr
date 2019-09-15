class CreateJobRuns < ActiveRecord::Migration[6.0]
  def change
    create_table :job_runs do |t|
      t.boolean :success, null: true
      t.integer :return_code, null: true
      t.string :error_message, null: true
      t.longtext :stdout, null: true
      t.longtext :stderr, null: true
      t.datetime :start_time, null: false
      t.datetime :end_time, null: true

      t.references :job, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.timestamps
    end
  end
end
