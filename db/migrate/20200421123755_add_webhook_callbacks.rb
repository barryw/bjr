class AddWebhookCallbacks < ActiveRecord::Migration[5.2]
  def change
    add_column :jobs, :success_callback, :string, null: true, default: nil
    add_column :jobs, :failure_callback, :string, null: true, default: nil
  end
end
