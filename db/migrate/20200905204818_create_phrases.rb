class CreatePhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :phrases do |t|
      t.string :expression
      t.string :image

      t.timestamps
    end
  end
end
