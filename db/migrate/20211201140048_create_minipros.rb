class CreateMinipros < ActiveRecord::Migration[5.2]
  def change
    create_table :minipros do |t|

      t.timestamps
    end
  end
end
