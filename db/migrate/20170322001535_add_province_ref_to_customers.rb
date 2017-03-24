class AddProvinceRefToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :province, :reference
    add_column :customer, :province_id, :integer
  end
end
