class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.string :name, null: false, limit: 100
      t.string :cron, null: false, limit: 20
      t.datetime :last_run, null: true
      t.datetime :next_run, null: false
      t.string :command, null: false
      t.string :timezone, default: 'UTC', limit: 50
      t.boolean :disabled, default: false

      t.references :user, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.timestamps
    end

    add_index :jobs, [:name, :user_id], unique: true
    add_index :jobs, :next_run
  end
end
