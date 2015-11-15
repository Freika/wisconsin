class AddDigestToPost < ActiveRecord::Migration
  def change
    add_column :posts, :digest, :string
    add_index :posts, :digest
  end
end
