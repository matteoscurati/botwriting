class RenameColumn < ActiveRecord::Migration
  def change
    rename_column :posts, :word_counter, :word_count
    rename_column :posts, :character_counter, :character_count
  end
end
