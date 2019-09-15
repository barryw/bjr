class CreateJobTags < ActiveRecord::Migration[6.0]
  def change
    create_table :job_tags do |t|
      t.string :name, null: false, limit: 50
      t.string :value, null: false, limit: 255

      t.references :job, null: false, index: true, foreign_key: { on_delete: :cascade }
      t.timestamps
    end
  end
end
