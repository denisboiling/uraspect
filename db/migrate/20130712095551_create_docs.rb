class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.integer     :category_id
      t.string      :name
      t.attachment  :example

      t.timestamps
    end
    add_index :docs, :category_id
  end
end
