class ChangeTimestampsSnakeCase < ActiveRecord::Migration[5.2]
    def change
    rename_column :users, :createdAt, :created_at
    rename_column :users, :updatedAt, :updated_at
  end
end
