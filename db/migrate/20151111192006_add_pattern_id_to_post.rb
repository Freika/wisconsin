class AddPatternIdToPost < ActiveRecord::Migration
  def change
    add_column :posts, :pattern_id, :integer
    add_index :posts, :pattern_id
  end
end
