# frozen_string_literal: true

class AddAccountType < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :is_root, :boolean, default: false
  end
end
