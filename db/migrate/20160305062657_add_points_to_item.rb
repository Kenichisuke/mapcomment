class AddPointsToItem < ActiveRecord::Migration
  def change
    add_column    :items, :longtitude, :float
    add_column    :items, :latitude, :float
  end
end
