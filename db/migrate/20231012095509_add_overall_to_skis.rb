class AddOverallToSkis < ActiveRecord::Migration[6.1]
  def change
    add_column :skis, :overall, :integer
  end
end
