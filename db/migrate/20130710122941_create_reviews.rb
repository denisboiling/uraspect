# encoding: utf-8
class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string  :caption,   default: "Гость"
      t.text    :content
      t.boolean :moderated, default: false

      t.timestamps
    end
  end
end
