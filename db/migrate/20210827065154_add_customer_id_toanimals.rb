class AddCustomerIdToanimals < ActiveRecord::Migration[5.2]
  def change
    add_column :animals, :customer_id, :integer
  end
end
