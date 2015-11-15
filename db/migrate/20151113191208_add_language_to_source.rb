class AddLanguageToSource < ActiveRecord::Migration
  def change
    add_column :sources, :language, :string
  end
end
