class CreateDivisors < ActiveRecord::Migration[5.2]
  def change
    create_table :divisors do |t|

      t.timestamps
    end
  end
end
