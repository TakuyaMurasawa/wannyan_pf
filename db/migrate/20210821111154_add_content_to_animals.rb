class AddContentToAnimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :content, :text
  end
end
