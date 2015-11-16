class AddClicksToSource < ActiveRecord::Migration
  def change
    add_column :sources, :clicks, :integer, default: 0
    add_index :sources, :clicks
  end
end
