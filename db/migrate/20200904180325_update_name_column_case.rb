class UpdateNameColumnCase < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :first_name, :firstName
    rename_column :users, :last_name, :lastName
  end
end
