class ChangeVoiceDatatype < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :voice, :string
  end
end
