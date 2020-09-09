class AddTagsToPhrases < ActiveRecord::Migration[5.2]
  def change
    add_column :phrases, :tags, :string, array: true, default: []
  end
end
