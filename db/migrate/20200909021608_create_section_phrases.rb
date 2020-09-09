class CreateSectionPhrases < ActiveRecord::Migration[5.2]
  def change
    create_table :section_phrases do |t|
      t.references :section, foreign_key: true
      t.references :phrase, foreign_key: true

      t.timestamps
    end
  end
end
