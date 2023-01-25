class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :cleanliness
      t.boolean :changing_table
      t.boolean :handicap_accessable
      t.boolean :gender_neutral
      t.boolean :feminine_products
      t.boolean :mirror

      t.timestamps
    end
  end
end
