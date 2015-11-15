class AddRssToSource < ActiveRecord::Migration
  def change
    add_column :sources, :rss, :string
  end
end
