class CreateRestrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :restrooms do |t|
      t.string :address
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :rating, null: false, foreign_key: true

      t.timestamps
    end
  end
end
