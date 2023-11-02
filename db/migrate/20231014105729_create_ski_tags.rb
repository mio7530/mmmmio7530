class CreateSkiTags < ActiveRecord::Migration[6.1]
  def change
    create_table :ski_tags do |t|
      t.references :ski, null: false, foreign_key: true
      t.references :tag, null: false, foreign_key: true

      t.timestamps
    end
  end
end
