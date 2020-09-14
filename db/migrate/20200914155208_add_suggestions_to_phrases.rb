class AddSuggestionsToPhrases < ActiveRecord::Migration[5.2]
  def change
    add_column :phrases, :suggestions, :string, array: true, default: []
  end
end
