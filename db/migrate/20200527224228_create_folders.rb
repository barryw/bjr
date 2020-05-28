class CreateFolders < ActiveRecord::Migration[5.2]
  def change
    create_table :folders do |t|
      t.string :name, null: false, limit: 50
      t.string :expression, null: false, limit: 100

      t.references :user, null: false, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps
    end

    add_index :folders, %i[name user_id], unique: true
  end
end
