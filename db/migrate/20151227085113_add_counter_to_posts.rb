class AddCounterToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :word_counter, :integer
    add_column :posts, :character_counter, :integer
  end
end
