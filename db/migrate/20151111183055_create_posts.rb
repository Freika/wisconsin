class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :source_id

      t.timestamps null: false
    end
    add_index :posts, :source_id
  end
end
