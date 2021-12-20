class CreateMinis < ActiveRecord::Migration[5.2]
  def change
    create_table :minis do |t|

      t.timestamps
    end
  end
end
