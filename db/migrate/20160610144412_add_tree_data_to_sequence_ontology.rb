class AddTreeDataToSequenceOntology < ActiveRecord::Migration
  def change
    add_column :variant_types, :parent_id, :integer, null: true, index: true
    add_column :variant_types, :lft, :integer, index: true
    add_column :variant_types, :rgt, :integer, index: true
  end
end
