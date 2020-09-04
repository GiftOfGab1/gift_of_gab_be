class FixUserTimestampColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :created_at, :createdAt
    rename_column :users, :updated_at, :updatedAt
  end
end
