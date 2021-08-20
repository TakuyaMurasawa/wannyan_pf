class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :title
      t.string :

      t.timestamps
    end
  end
end
