class AddCommentToSkis < ActiveRecord::Migration[6.1]
  def change
    add_column :skis, :comment, :text
  end
end
