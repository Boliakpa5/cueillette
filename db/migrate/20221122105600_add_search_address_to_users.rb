class AddSearchAddressToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :seach_address, :string
  end
end
