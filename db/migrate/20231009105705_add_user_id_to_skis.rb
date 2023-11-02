class AddUserIdToSkis < ActiveRecord::Migration[6.1]
  def change
    add_column :skis, :user_id, :integer
  end
end
