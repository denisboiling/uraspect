class AddPositonToPartners < ActiveRecord::Migration
  def change
    add_column  :partners, :position, :integer
    add_index   :partners, :position
  end
end
