class CreatePatternsPosts < ActiveRecord::Migration
  def change
    create_table :patterns_posts, id: false do |t|
      t.integer :post_id
      t.integer :pattern_id
    end
    add_index :patterns_posts, :post_id
    add_index :patterns_posts, :pattern_id
  end
end
