class AddDetailsToSkis < ActiveRecord::Migration[6.1]
  def change
    add_column :skis, :lat, :float
    add_column :skis, :lng, :float
  end
end
