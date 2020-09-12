class FixSectionPhraseCase < ActiveRecord::Migration[5.2]
  def change
    rename_column :section_phrases, :section_id, :sectionId
    rename_column :section_phrases, :phrase_id, :phraseId
    rename_column :user_sections, :user_id, :userId
    rename_column :user_sections, :section_id, :sectionId
  end
end
