class AddPositonToDocCategories < ActiveRecord::Migration
  def change
    add_column  :doc_categories, :position, :integer
    add_index   :doc_categories, :position
  end
end
