class ChangePitchAgain < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :pitch, :voice
  end
end
