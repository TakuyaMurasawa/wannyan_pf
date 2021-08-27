class ChangeColumnDefaultToAnimals < ActiveRecord::Migration[5.2]
  def change
    change_column_default :animals, :tipe, from: nil, to: "0"
    change_column_default :animals, :sex, from: nil, to: "0"
    change_column_default :animals, :vaccine, from: nil, to: "0"
    change_column_default :animals, :castrate, from: nil, to: "0"
  end
end
