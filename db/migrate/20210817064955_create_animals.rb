class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :title, null: false
      t.integer :tipe, null: false
      t.integer :sex, null: false
      t.date :birthday, null: false
      t.string :prefecture, null: false
      
      t.integer :vaccine, null: false
      t.date :vaccine_date
      t.integer :castrate, null: false
      
      t.text :profile, null: false
      t.text :other

      t.timestamps
    end
  end
end
