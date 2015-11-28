class AddApprovedToSource < ActiveRecord::Migration
  def change
    add_column :sources, :approved, :boolean, default: false
    Source.update_all(approved: true)
  end
end
