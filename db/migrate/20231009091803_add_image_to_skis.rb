class AddImageToSkis < ActiveRecord::Migration[6.1]
  def change
    add_column :skis, :image, :string
  end
end
