class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :cleanliness
      t.boolean :changing_table
      t.boolean :handicap_accessable
      t.boolean :gender_neutral
      t.boolean :feminine_products
      t.boolean :mirror
      t.belongs_to :restroom, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
