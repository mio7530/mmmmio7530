class CreateSkis < ActiveRecord::Migration[6.1]
  def change
    create_table :skis do |t|
      t.date :date

      t.timestamps
    end
  end
end
