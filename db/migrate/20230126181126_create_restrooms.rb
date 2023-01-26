class CreateRestrooms < ActiveRecord::Migration[7.0]
  def change
    create_table :restrooms do |t|
      t.string :address

      t.timestamps
    end
  end
end
